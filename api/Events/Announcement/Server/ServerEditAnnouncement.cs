using lib;

namespace api.Events.Announcement.Server;
public class ServerEditAnnouncement: BaseDto
{
    public int id { get; set; }
    public string content { get; set; }
    public DateTimeOffset timestamp { get; set; }
    
}