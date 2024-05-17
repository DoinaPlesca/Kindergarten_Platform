using infrastructure.QueryModels;
using lib;

namespace api.Events.CalendarEvents.Server;

public class ServerGetEventsByDateRange : BaseDto
{
    public List<InsertEventResult> eventsByDataRange { get; set; }
}