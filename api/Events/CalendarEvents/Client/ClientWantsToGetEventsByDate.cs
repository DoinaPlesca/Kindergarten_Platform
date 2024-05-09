using api.EventFilters;
using Fleck;
using lib;
using service;
using System;
using System.Linq;
using System.Threading.Tasks;
using api.Events.CalendarEvents.Server;
using api.Helper;
using Serilog;

namespace api.Events.CalendarEvents.Client
{
    public class ClientWantsToGetEventsByDate : BaseDto
    {
        public string Date { get; set; }
    }

    [ValidateDataAnnotations]
    [RequireAuthentication]
    public class ClientGetEvents : BaseEventHandler<ClientWantsToGetEventsByDate>
    {
        private readonly CalendarEventsService _calendarEventsService;

        public ClientGetEvents(CalendarEventsService calendarEventsService)
        {
            _calendarEventsService = calendarEventsService;
        }

        public override async Task Handle(ClientWantsToGetEventsByDate dto, IWebSocketConnection socket)
        {
            try
            {
                var date = DateTime.Parse(dto.Date); 
                
                var events =  _calendarEventsService.GetEventsByDate(date);
                
                var eventDtos = events.Select(e => new EventDto
                {
                    EventDescription = e.eventdescription,
                    EventTitle = e.eventtitle
                }).ToList();
                
                var responseDto = new ServerGetEventsByDate
                {
                    EventsByDate = eventDtos
                };
                socket.SendDto(responseDto);
            }
            catch (Exception ex)
            {
                Log.Error(ex, "An error occurred during get events by date request.");
                throw;
            }
        }
    }
}