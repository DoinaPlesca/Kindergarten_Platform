
using infrastructure.QueryModels;


namespace api.Events.Announcement.Server;
using lib;

public class ServerPostAnnouncement : BaseDto
{
    public AnnouncementWithSenderEmail message { get; set; }
    
}