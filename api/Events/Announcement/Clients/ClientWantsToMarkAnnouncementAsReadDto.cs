using System.ComponentModel.DataAnnotations;
using Fleck;
using lib;
using Serilog;
using api.EventFilters;
using api.Events.Announcement.Server;
using api.Helper;
using api.WebSocket;
using service;

namespace api.Events.Announcement.Clients
{
    public class ClientWantsToMarkAnnouncementAsReadDto : BaseDto
    {
        [Required(ErrorMessage = "Announcement ID is required.")]
        [Range(1, int.MaxValue, ErrorMessage = "Announcement ID must be a positive number.")]
        public int announcementId { get; set; }
    }

    [ValidateDataAnnotations]
    [RequireAuthentication]
    public class ClientWantsToMarkAnnouncementAsRead : BaseEventHandler<ClientWantsToMarkAnnouncementAsReadDto>
    {
        private readonly AnnouncementService _announcementService;

        public ClientWantsToMarkAnnouncementAsRead(AnnouncementService announcementService)
        {
            _announcementService = announcementService;
        }

        public override Task Handle(ClientWantsToMarkAnnouncementAsReadDto dto, IWebSocketConnection socket)
        {
            try
            {
                var clientMetadata = WebSocketStateService.GetClient(socket.ConnectionInfo.Id);

                _announcementService.MarkAnnouncementAsRead(dto.announcementId);

                
                var notificationDto = new ServerMarkAnnouncementAsRead()
                {
                    id = dto.announcementId,
                    userId = clientMetadata.User.id,
                    email = clientMetadata.User.email
                };
                
                socket.SendDto(notificationDto);
            }
            catch (Exception ex)
            {
                Log.Error(ex, "An error occurred while marking the announcement as read.");
                throw;
            }

            return Task.CompletedTask;
        }
    }

   
}
