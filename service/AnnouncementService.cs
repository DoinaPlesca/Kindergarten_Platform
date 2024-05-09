using infrastructure.ParametherModel;
using infrastructure.QueryModels;
using infrastructure.Repository;

namespace service;

public class AnnouncementService
{
    private readonly AnnouncementsRepository _announcementsRepository;

    public AnnouncementService(AnnouncementsRepository announcementsRepository)
    {
        _announcementsRepository= announcementsRepository;
    }


    public InsertAnnouncementResult InsertAnnouncement(InsertAnnouncementParams insertAnnouncementParams)
    {
        return _announcementsRepository.InsertAnnouncement(insertAnnouncementParams);
    }

    public IEnumerable<AnnouncementWithSenderEmail> GetAllAnnouncements()
    {
        return _announcementsRepository.GetAllAnnouncements();
    }

    public void EditAnnouncement(EditAnnouncementParams editAnnouncementParams)
    {
         _announcementsRepository.EditAnnouncement(editAnnouncementParams);
    }
}