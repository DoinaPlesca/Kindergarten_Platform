using api.EventFilters;
using api.Events.CalendarEvents.Server;
using api.Helper;
using Fleck;
using infrastructure.QueryModels;
using lib;
using Serilog;
using service;
namespace api.Events.CalendarEvents.Client;

public class ClientWantsToGetAllEvents : BaseEventHandler<BaseDto>
{
    private readonly CalendarEventsService _calendarEventsService;

    public ClientWantsToGetAllEvents(CalendarEventsService calendarEventsService)
    {
        _calendarEventsService = calendarEventsService;
    }

    public override async Task Handle(BaseDto dto, IWebSocketConnection socket)
    {
        try
        {
            var events = _calendarEventsService.GetAllEvents();

            var eventsDto = new List<InsertEventResult>();
            foreach (var calendarEvent in events)
            {
                var eventDto = new InsertEventResult
                {
                    eventid = calendarEvent.eventid,
                    eventdate = calendarEvent.eventdate,
                    eventdescription = calendarEvent.eventdescription,
                    eventtitle = calendarEvent.eventtitle
                };
                eventsDto.Add(eventDto);
            }

            var responseDto = new ServerGetAllCalendarEvents
            {
                Events = eventsDto
            };

            Log.Information("Sending all calendar events to client.");
            socket.SendDto(responseDto);
        }
        catch (Exception ex)
        {
            Log.Error(ex, "An error occurred during get all calendar events request.");
            throw;
        }
    }
}