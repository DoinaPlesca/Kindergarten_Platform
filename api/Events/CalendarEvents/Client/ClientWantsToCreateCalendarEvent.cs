using api.Helper;
using Fleck;
using Serilog;
using api.EventFilters;
using api.Events.CalendarEvents.Server;
using infrastructure.QueryModels;
using lib;
using service;

namespace api.Events.CalendarEvents.Client
{
    public class ClientWantsToCreateNewCalendarEvent : BaseDto
    {
        public DateTime eventdate { get; set; }
        public string eventdescription { get; set; }
        public string eventtitle { get; set; }
    }

    [ValidateDataAnnotations]
    [RequireAuthentication]
    public class ClientCreateCalendarEvent : BaseEventHandler<ClientWantsToCreateNewCalendarEvent>
    {
        private readonly CalendarEventsService _calendarEventsService;

        public ClientCreateCalendarEvent(CalendarEventsService calendarEventsService)
        {
            _calendarEventsService = calendarEventsService;
        }

        public override Task Handle(ClientWantsToCreateNewCalendarEvent dto, IWebSocketConnection socket)
        {
            try
            {
                var newEvent = new InsertEventResult
                {
                    eventdate = dto.eventdate,
                    eventdescription = dto.eventdescription,
                    eventtitle = dto.eventtitle
                };
                
                var createdEvent = _calendarEventsService.InsertNewEvent(newEvent);
                
                var responseDto = new ServerCreateCalendarEvent
                {
                    newEvent = createdEvent
                };
                
                socket.SendDto(responseDto);
            }
            catch (Exception ex)
            {
                Log.Error(ex, "An error occurred during create calendar event request.");
            }
            return Task.CompletedTask;
        }
    }
}
