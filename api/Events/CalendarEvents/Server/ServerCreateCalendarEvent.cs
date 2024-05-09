using infrastructure.ParametherModel;
using lib;

namespace api.Events.CalendarEvents.Server;

public class ServerCreateCalendarEvent : BaseDto
{
    public InsertEventParams newEvent { get; set; }
}