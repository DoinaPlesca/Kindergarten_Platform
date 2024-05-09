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


    public IEnumerable<InsertEventResult> GetAllEvents()
    {
        return _calendarEventsRepository.GetAllEvents();
    }

    public InsertEventResult InsertNewEvent(InsertEventParams insertEventParams)
    {
        return _calendarEventsRepository.InsertNewEvent(insertEventParams);
    }

    public IEnumerable<InsertEventResult> GetEventsByDate(DateTime date)
    {
        return _calendarEventsRepository.GetEventsByDate(date);
    }
}