using System.ComponentModel.DataAnnotations;
using System.Reflection;
using System.Security.Authentication;
using System.Text.Json;
using api.Helper;
using api.ServerEvents;
using api.WebSocket;
using Fleck;
using infrastructure;
using infrastructure.Repository;
using lib;
using Serilog;
using service;
using service.Security;

namespace api;

public static class Startup
{
    public static void Main(string[] args)
    {
        var webApp = Start(args);
        webApp.Run();
    }

    public static WebApplication Start(string[] args)
    {
        Log.Logger = new LoggerConfiguration()
            .WriteTo.Console(
                outputTemplate: "\n{Timestamp:yyyy-MM-dd HH:mm:ss} [{Level}] {Message}{NewLine}{Exception}\n")
            .CreateLogger();
        Log.Information(JsonSerializer.Serialize(Environment.GetEnvironmentVariables()));

        var builder = WebApplication.CreateBuilder(args);
        builder.Services.AddSingleton<CredentialService>();
        builder.Services.AddSingleton<TokenService>();
        builder.Services.AddSingleton<TokenBlacklistService>();

        builder.Services.AddNpgsqlDataSource(Utilities.ProperlyFormattedConnectionString!,
            sourceBuilder => { sourceBuilder.EnableParameterLogging(); });
        builder.Services.AddSingleton<AuthenticationRepository>();
        builder.Services.AddSingleton<AnnouncementsRepository>();
        builder.Services.AddSingleton<AnnouncementService>();
        builder.Services.AddSingleton<ChildService>();
        builder.Services.AddSingleton<ChildRepository>();
        builder.Services.AddSingleton<CalendarEventsService>();
        builder.Services.AddSingleton<CalendarEventsRepository>();
        builder.Services.AddSingleton<GalleryRepository>();
        builder.Services.AddSingleton<GalleryService>();

        // Register event handlers
        var services = builder.FindAndInjectClientEventHandlers(Assembly.GetExecutingAssembly());
        

        Log.Information("Configuring server...");

        builder.WebHost.UseUrls("http://*:9999");
        var app = builder.Build();

        // Add JwtMiddleware to the pipeline
        app.UseMiddleware<JwtMiddleware>();

        var port = Environment.GetEnvironmentVariable("PORT") ?? "8181";
        var server = new WebSocketServer("ws://0.0.0.0:" + port);
        server.RestartAfterListenError = true;

        server.Start(socket =>
        {
            socket.OnOpen = () => WebSocketStateService.AddClient(socket.ConnectionInfo.Id, socket);
            Log.Information($"WebSocket connection opened: {socket.ConnectionInfo.Id}");
            
            socket.OnMessage = async message =>
            {
                try
                {
                    Log.Information($"Received message from {socket.ConnectionInfo.Id}: {message}");
                    await app.InvokeClientEventHandler(services, socket, message);
                }
                catch (Exception e)
                {
                    Log.Error(e, "Global exception handler");

                    // Send an error message back to the client
                    if (app.Environment.IsProduction() && (e is ValidationException or AuthenticationException))
                    {
                        socket.SendDto(new ServerSendsErrorMessageToClient()
                        {
                            errorMessage = "Something went wrong",
                            receivedMessage = message
                        });
                    }
                    else
                    {
                        socket.SendDto(new ServerSendsErrorMessageToClient
                        {
                            errorMessage = e.Message,
                            receivedMessage = message
                        });
                    }
                }
            };
            
            socket.OnClose = () =>
            {
                Log.Information($"WebSocket connection closed: {socket.ConnectionInfo.Id}");
                WebSocketStateService.RemoveClient(socket.ConnectionInfo.Id);
            };
        });

        Log.Information("Server configuration completed.");

        return app;
    }
}
