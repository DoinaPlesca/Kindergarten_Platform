using api.EventFilters;
using api.Events.CalendarEvents.Server;
using api.Helper;
using Fleck;
using lib;
using Serilog;
using service;

namespace api.Events.CalendarEvents.Client;

public class ClientWantsToGetEventsByDateRange : BaseDto
{
    public DateTime StartDate { get; set; }
    public DateTime EndDate { get; set; }
}

[ValidateDataAnnotations]
[RequireAuthentication]
public class ClientGetEventsByDateRange : BaseEventHandler<ClientWantsToGetEventsByDateRange>
{
    private readonly CalendarEventsService _calendarEventsService;

    public ClientGetEventsByDateRange(CalendarEventsService calendarEventsService)
    {
        _calendarEventsService = calendarEventsService;
    }

    public override Task Handle(ClientWantsToGetEventsByDateRange dto, IWebSocketConnection socket)
    {
        try
        {
            var events = _calendarEventsService.GetEventsByDateRange(dto.StartDate, dto.EndDate);
                
            var responseDto = new ServerGetEventsByDateRange
            {
                eventsByDataRange= events
            };

            socket.SendDto(responseDto);
        }
        catch (Exception ex)
        {
            Log.Error(ex, "An error occurred during get events by date range request.");
            throw;
        }

        return Task.CompletedTask;
    }
}