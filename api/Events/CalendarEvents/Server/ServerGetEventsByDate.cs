using infrastructure.QueryModels;
using lib;

namespace api.Events.CalendarEvents.Server
{
    public class ServerGetEventsByDate : BaseDto
    {
        public List<InsertEventResult> eventsByDate { get; set; }
    }
}