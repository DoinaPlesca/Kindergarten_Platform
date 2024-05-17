using infrastructure.QueryModels;
using infrastructure.Repository;

namespace service;

public class GalleryService
{
    private readonly GalleryRepository _galleryRepository;

    public GalleryService(GalleryRepository galleryRepository)
    {
        _galleryRepository = galleryRepository;
    }


    public Gallery AddNewPhoto(Gallery gallery)
    {
        return _galleryRepository.AddNewPhoto(gallery);
    }

    public List<Gallery> GetLastPhotos()
    {
        return _galleryRepository.GetLastPhotos();
    }
}