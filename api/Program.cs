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

        builder.Services.AddNpgsqlDataSource(Utilities.ProperlyFormattedConnectionString,
            sourceBuilder => { sourceBuilder.EnableParameterLogging(); });
        builder.Services.AddSingleton<AuthenticationRepository>();
        var services = builder.FindAndInjectClientEventHandlers(Assembly.GetExecutingAssembly());
        
        Log.Information("Configuring server...");
        
        builder.WebHost.UseUrls("http://*:9999");
        var app = builder.Build();
        
        var port = Environment.GetEnvironmentVariable("PORT") ?? "8181";
        var server = new WebSocketServer("ws://0.0.0.0:"+port);
        server.RestartAfterListenError = true;
        
          server.Start(socket =>
        {
            // Log when a WebSocket connection is opened
            Log.Information($"WebSocket connection opened: {socket.ConnectionInfo.Id}");
            
            // Add the WebSocket client to the state service
            WebSocketStateService.AddClient(socket.ConnectionInfo.Id, socket);
            
            // Configure the actions when a message is received
            socket.OnMessage = async message =>
            {
                try
                {
                    // Log the received message
                    Log.Information($"Received message from {socket.ConnectionInfo.Id}: {message}");
                    
                    // Invoke the client event handler
                    await app.InvokeClientEventHandler(services, socket, message);
                }
                catch (Exception e)
                {
                    // Log any exceptions that occur
                    Log.Error(e, "Global exception handler");
                    
                    // Send an error message back to the client
                    if (app.Environment.IsProduction() && (e is ValidationException || e is AuthenticationException))
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
                            { errorMessage = e.Message, receivedMessage = message });
                    }
                }
            };
            
            // Configure the action when a WebSocket connection is closed
            socket.OnClose = () =>
            {
                // Log when a WebSocket connection is closed
                Log.Information($"WebSocket connection closed: {socket.ConnectionInfo.Id}");
                
                // Remove the WebSocket client from the state service
                WebSocketStateService.RemoveClient(socket.ConnectionInfo.Id);
            };
        });
        
        // Log the completion of server configuration
        Log.Information("Server configuration completed.");
        
        // Return the built web application
        return app;
    }
}