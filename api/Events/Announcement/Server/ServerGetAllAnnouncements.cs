using infrastructure.QueryModels;

using lib;

namespace api.Events.Announcement.Server;

public class ServerGetAllAnnouncements :BaseDto
{
    public List<AnnouncementWithSenderEmail> Announcements { get; set; }
}