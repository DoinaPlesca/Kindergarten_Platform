using infrastructure.QueryModels;
using lib;

namespace api.Events.Announcement.Server;

public class ServerUnreadAnnouncements : BaseDto
{
    public List<AnnouncementWithSenderEmail> UnreadAnnouncements { get; set; }
}
