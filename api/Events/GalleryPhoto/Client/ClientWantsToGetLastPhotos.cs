using api.EventFilters;
using api.Events.GalleryPhoto.Server;
using api.Helper;
using Fleck;
using lib;
using Serilog;
using service;

namespace api.Events.GalleryPhoto.Client;

public class ClientWantsToGetLastPhotos : BaseDto
{
}

[RequireAuthentication]
[ValidateDataAnnotations]
public class ClientGetLastPhotos : BaseEventHandler<ClientWantsToGetLastPhotos>
{
    private readonly GalleryService _galleryService;

    public ClientGetLastPhotos(GalleryService galleryService)
    {
        _galleryService = galleryService;
    }

    public override Task Handle(ClientWantsToGetLastPhotos dto, IWebSocketConnection socket)
    {
        try
        {
            var lastPhotos = _galleryService.GetLastPhotos(); 
            var responseDto = new ServerGetLastPhotos
            {
                lastPhotos = lastPhotos
            };
            
            socket.SendDto(responseDto);
        }
        catch (Exception ex)
        {
            Log.Error(ex, "An error occurred during get last photos request.");
        }
        return Task.CompletedTask;
    }
}