using api.Helper;
using Fleck;
using infrastructure.ParametherModel;
using Serilog;
using service;
using System;
using System.Threading.Tasks;
using api.EventFilters;
using api.Events.CalendarEvents.Server;
using lib;

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
                var insertEventParams = new InsertEventParams
                {
                    eventdate = dto.eventdate,
                    eventdescription = dto.eventdescription,
                    eventtitle= dto.eventtitle
                };
                
                _calendarEventsService.InsertNewEvent(insertEventParams);
                
               
                var responseDto = new ServerCreateCalendarEvent
                {
                    newEvent = insertEventParams
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
