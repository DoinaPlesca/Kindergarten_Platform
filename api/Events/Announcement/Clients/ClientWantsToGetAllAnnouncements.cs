
using api.EventFilters;
using api.Events.Announcement.Server;
using api.Helper;
using Fleck;
using infrastructure.QueryModels;
using lib;
using Serilog;
using service;

namespace api.Events.Announcement.Clients;

[ValidateDataAnnotations]
[RequireAuthentication]

public class ClientWantsToGetAllAnnouncements : BaseEventHandler<BaseDto>
{
    private readonly AnnouncementService _announcementService;

    public ClientWantsToGetAllAnnouncements(AnnouncementService announcementService)
    {
        _announcementService = announcementService;
    }

    public override Task Handle(BaseDto dto, IWebSocketConnection socket)
    {
        try
        {
            Log.Information("Handling get all announcements request.");

            var announcements = _announcementService.GetAllAnnouncements();

            var announcementDtos = new List<AnnouncementWithSenderEmail>();
            foreach (var announcement in announcements)
            {
                var announcementDto = new AnnouncementWithSenderEmail()
                {
                    id = announcement.id,
                    sender = announcement.sender,
                    content = announcement.content,
                    timestamp = announcement.timestamp,
                    email = announcement.email
                };
                announcementDtos.Add(announcementDto);
            }

            var responseDto = new ServerGetAllAnnouncements
            {
                Announcements = announcementDtos
            };

            Log.Information("Sending all announcements to client.");
            socket.SendDto(responseDto);
        }
        catch (Exception ex)
        {
            Log.Error(ex, "An error occurred during get all announcements request.");
            throw;
        }

        return Task.CompletedTask;
    }
}