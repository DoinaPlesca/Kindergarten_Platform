using infrastructure.QueryModels;
using lib;

namespace api.Events.GalleryPhoto.Server;

public class ServerAddNewPhoto :BaseDto
{
    public Gallery newPhoto { get; set; }
}