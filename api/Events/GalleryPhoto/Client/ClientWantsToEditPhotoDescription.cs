using System.ComponentModel.DataAnnotations;
using api.EventFilters;
using api.Events.GalleryPhoto.Server;
using api.Helper;
using Fleck;
using lib;
using Serilog;
using service;

namespace api.Events.GalleryPhoto.Client
{
    public class ClientWantsToEditPhotoDescriptionDto : BaseDto
    {
       [Required] public int photoid { get; set; }
       [Required] public string description { get; set; }
    }

    [ValidateDataAnnotations]
    [RequireAuthentication]
    public class ClientWantsToEditPhotoDescription : BaseEventHandler<ClientWantsToEditPhotoDescriptionDto>
    {
        private readonly GalleryService _galleryService;

        public ClientWantsToEditPhotoDescription(GalleryService galleryService)
        {
            _galleryService = galleryService;
        }

        public override Task Handle(ClientWantsToEditPhotoDescriptionDto dto, IWebSocketConnection socket)
        {
            try
            {
                _galleryService.EditPhotoDescription(dto.photoid, dto.description);

                Log.Information("Photo description successfully edited for photoid {PhotoId}.", dto.photoid);
                
                var responseDto = new ServerEditPhotoDescription
                {
                    photoid = dto.photoid,
                    description = dto.description
                };
                
                socket.SendDto(responseDto);

                Log.Information("Sent updated description back to client for PhotoID {PhotoId}.", dto.photoid);
            }
            catch (Exception ex)
            {
                Log.Error(ex, "An error occurred during the photo description edit request.");
            }
            return Task.CompletedTask;
        }
    }
}
