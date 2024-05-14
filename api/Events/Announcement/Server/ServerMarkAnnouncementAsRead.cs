using lib;

namespace api.Events.Announcement.Server;

public class ServerMarkAnnouncementAsRead : BaseDto
{
    public int id { get; set; }
    public int userId { get; set; }
    public string email { get; set; }
}