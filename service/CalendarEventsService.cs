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

    public InsertEventResult InsertNewEvent(InsertEventResult newEvent)
    {
        return _calendarEventsRepository.InsertNewEvent(newEvent);
    }
    

    public List<InsertEventResult> GetEventsByDateRange(DateTime startDate, DateTime endDate)
    {
        return _calendarEventsRepository.GetEventsByDateRange(startDate,endDate);
    }
}