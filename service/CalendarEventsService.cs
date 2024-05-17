using infrastructure.ParametherModel;
using infrastructure.QueryModels;
using infrastructure.Repository;

namespace service;

public class CalendarEventsService
{
    private readonly CalendarEventsRepository _calendarEventsRepository;

    public CalendarEventsService(CalendarEventsRepository calendarEventsRepository)
    {
        _calendarEventsRepository= calendarEventsRepository;
    }


    public List<InsertEventResult> GetAllEvents()
    {
        return _calendarEventsRepository.GetAllEvents();
    }

    public InsertEventResult InsertNewEvent(InsertEventResult newEvent)
    {
        return _calendarEventsRepository.InsertNewEvent(newEvent);
    }

    public List<InsertEventResult> GetEventsByDate(DateTime date)
    {
        return _calendarEventsRepository.GetEventsByDate(date);
    }

    public List<InsertEventResult> GetEventsByDateRange(DateTime startDate, DateTime endDate)
    {
        return _calendarEventsRepository.GetEventsByDateRange(startDate,endDate);
    }
}