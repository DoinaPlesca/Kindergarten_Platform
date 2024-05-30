using System.ComponentModel.DataAnnotations;
using api.EventFilters;
using api.Events.Announcement.Server;
using api.WebSocket;
using Fleck;
using infrastructure.ParametherModel;
using infrastructure.QueryModels;
using lib;
using Serilog;
using service;

namespace api.Events.Announcement.Clients
{
    public class ClientWantsToPostAnnouncementDto : BaseDto
    {
        private const int MaxContentLength = 1000;

       [Required(ErrorMessage = "Announcement content is required.")]
       [StringLength(MaxContentLength, ErrorMessage = "Announcement content cannot exceed {1} characters.")]
        public string content { get; set; }
    }

    [ValidateDataAnnotations]
    [RequireAuthentication]
    public class ClientWantsToPostAnnouncement : BaseEventHandler<ClientWantsToPostAnnouncementDto>
    {
        private readonly AnnouncementService _announcementService;

        public ClientWantsToPostAnnouncement(AnnouncementService announcementService)
        {
            _announcementService = announcementService;
        }

        public override Task Handle(ClientWantsToPostAnnouncementDto dto, IWebSocketConnection socket)
        {
            try
            {
                var clientMetadata = WebSocketStateService.GetClient(socket.ConnectionInfo.Id);
                if (clientMetadata.User == null)
                {
                    Log.Error("Client metadata or user is null.");
                    return Task.CompletedTask;  
                }
               
                Log.Information("Posting announcement for user {UserId}.", clientMetadata.User.id);
                
                var insertAnnouncementParams = new InsertAnnouncementParams(
                    dto.content,
                    DateTimeOffset.UtcNow,
                    clientMetadata.User.id
                  
                );

                var insertedMessage = _announcementService.InsertAnnouncement(insertAnnouncementParams);
                var messageWithUserInfo = new AnnouncementWithSenderEmail
                {
                    sender = insertedMessage.sender,
                    content = insertedMessage.content,
                    timestamp = insertedMessage.timestamp,
                    id = insertedMessage.id,
                    email = clientMetadata.User.email
                };

              
                WebSocketStateService.BroadcastMessageToAllExcept(new ServerPostAnnouncement
                {
                    message = messageWithUserInfo
                }, clientMetadata.User.id);  
                
                WebSocketStateService.BroadcastMessageToAllExcept(new ServerNotifiesClientsWhenNewAnnouncementWasPost
                {
                    notificationmessage = "New Announcement",
                    userName = clientMetadata.User.email
                }, clientMetadata.User.id);
            }
            catch (Exception ex)
            {
                Log.Error(ex, "An error occurred during post announcement request.");
                throw;
            }

            return Task.CompletedTask;
        }
    }
}
