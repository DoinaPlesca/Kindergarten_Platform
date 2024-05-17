
using infrastructure.QueryModels;
using lib;
namespace api.Events.CalendarEvents.Server;

public class ServerCreateCalendarEvent : BaseDto
{
    public InsertEventResult newEvent { get; set; }
}
