using System.ComponentModel.DataAnnotations;
using api.EventFilters;
using api.Events.CalendarEvents.Client;
using api.Events.CalendarEvents.Server;
using api.Events.GalleryPhoto.Server;
using api.Helper;
using Fleck;
using infrastructure.QueryModels;
using lib;
using Serilog;
using service;

namespace api.Events.GalleryPhoto.Client;
public class ClientWantsToAddNewPhoto : BaseDto
{
    [Required(ErrorMessage = "Photo URL is required.")]
    public string photourl { get; set; }

    [Required(ErrorMessage = "Description is required.")]
    [StringLength(250, ErrorMessage = "Description cannot be longer than 250 characters.")]
    public string description { get; set; }
}
[ValidateDataAnnotations]
[RequireAuthentication]
public class ClientAddNewPhoto : BaseEventHandler<ClientWantsToAddNewPhoto>
{
    private readonly GalleryService _galleryService;

    public ClientAddNewPhoto(GalleryService galleryService)
    {
        _galleryService = galleryService;
    }

    public override Task Handle(ClientWantsToAddNewPhoto dto, IWebSocketConnection socket)
    {
        try
        {
            var newPhoto = new Gallery
            {
                photourl = dto.photourl,
                description = dto.description,
            };

            var createdPhoto = _galleryService.AddNewPhoto(newPhoto);
                
            var responseDto = new ServerAddNewPhoto 
            {
                newPhoto = createdPhoto
            };
                
            socket.SendDto(responseDto);
        }
        catch (Exception ex)
        {
            Log.Error(ex, "An error occurred during create calendar event request.");
        }
        return Task.CompletedTask;
    }
}

