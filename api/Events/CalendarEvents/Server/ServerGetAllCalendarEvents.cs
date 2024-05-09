using infrastructure.QueryModels;
using lib;

namespace api.Events.CalendarEvents.Server;

public class ServerGetAllCalendarEvents : BaseDto
{
    public List<InsertEventResult> Events { get; set; }
}