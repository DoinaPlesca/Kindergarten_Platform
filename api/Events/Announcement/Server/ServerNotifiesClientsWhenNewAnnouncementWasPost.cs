
using lib;

namespace api.Events.Announcement.Server;

public class ServerNotifiesClientsWhenNewAnnouncementWasPost: BaseDto
{
    public string? notificationmessage { get; set; }
    public string? userName { get; set; }
}