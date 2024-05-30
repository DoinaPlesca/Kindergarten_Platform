using System.ComponentModel.DataAnnotations;
using api.EventFilters;
using api.Events.Announcement.Server;
using api.Helper;
using Fleck;
using infrastructure.ParametherModel;
using lib;
using Serilog;
using service;

namespace api.Events.Announcement.Clients
{
    public class ClientWantsToEditAnnouncementDto : BaseDto
    {
        [Required(ErrorMessage = "Announcement ID is required.")]
        [Range(1, int.MaxValue, ErrorMessage = "Announcement ID must be a positive number.")]
        public int id { get; set; }

        [Required(ErrorMessage = "Content is required.")]
        [StringLength(500, ErrorMessage = "Content cannot exceed 1000 characters.")]
        public string content { get; set; }
    }
    [ValidateDataAnnotations]
    [RequireAuthentication]
    public class ClientWantsToEditAnnouncement : BaseEventHandler<ClientWantsToEditAnnouncementDto>
    {
        private readonly AnnouncementService _announcementService;

        public ClientWantsToEditAnnouncement(AnnouncementService announcementService)
        {
            _announcementService = announcementService;
        }

        public override Task Handle(ClientWantsToEditAnnouncementDto dto, IWebSocketConnection socket)
        {
            try
            {
                Log.Information("Handling edit announcement request.");
                DateTimeOffset currentTime = DateTimeOffset.UtcNow;
               
                _announcementService.EditAnnouncement(new EditAnnouncementParams
                {
                    id = dto.id,
                    content = dto.content,
                    timestamp = currentTime
                });

                Log.Information("Announcement successfully edited.");
                
                var responseDto = new ServerEditAnnouncement
                {
                    id = dto.id,
                    content = dto.content,
                    timestamp = currentTime
                };
                socket.SendDto(responseDto);
            }
            catch (Exception ex)
            {
                Log.Error(ex, "An error occurred during edit announcement request.");
            }
            return Task.CompletedTask;
        }
    }
}