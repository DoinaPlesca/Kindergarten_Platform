using lib;

namespace api.Events.GalleryPhoto.Server;

public class ServerEditPhotoDescription :BaseDto
{
    public int photoid { get; set; }
    public String description { get; set; }
}