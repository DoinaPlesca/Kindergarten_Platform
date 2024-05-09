using lib;

namespace api.Events.Announcement.Server;
//represinta datele trimise de catre server inapoi,indicand ca anuntul a fost editat corect
public class ServerEditAnnouncement: BaseDto
{
    public int id { get; set; }
    public string content { get; set; }
    public DateTimeOffset timestamp { get; set; }
    
}