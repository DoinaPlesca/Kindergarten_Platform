using infrastructure.QueryModels;
using lib;

namespace api.Events.Announcement.Server;

public class ServerGetUnreadAnnouncements: BaseDto
{
    public string? message { get; set; }
    public string userEmail { get; set; }
}