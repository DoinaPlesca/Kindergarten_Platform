using infrastructure.ParametherModel;
using lib;

namespace api.Events.CalendarEvents.Server;

public class ServerGetEventsByDate : BaseDto
{
    public List<EventDto> EventsByDate { get; set; }
}

public class EventDto
{
   
    public string EventDescription { get; set; }
    public string EventTitle { get; set; }
}