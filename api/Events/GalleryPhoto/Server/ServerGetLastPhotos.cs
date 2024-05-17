using infrastructure.QueryModels;
using lib;

namespace api.Events.GalleryPhoto.Server;

public class ServerGetLastPhotos :BaseDto
{
    public IEnumerable<Gallery> lastPhotos { get; set; }
}