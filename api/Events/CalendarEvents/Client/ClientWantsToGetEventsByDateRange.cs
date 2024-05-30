using System.ComponentModel.DataAnnotations;
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
    [Required(ErrorMessage = "Start date is required.")]
    [DataType(DataType.Date, ErrorMessage = "Start date must be a valid date.")]
    public DateTime StartDate { get; set; }

    [Required(ErrorMessage = "End date is required.")]
    [DataType(DataType.Date, ErrorMessage = "End date must be a valid date.")]
    public DateTime EndDate { get; set; }

    // ensure that StartDate is not later than EndDate
    public IEnumerable<ValidationResult> Validate(ValidationContext validationContext)
    {
        if (StartDate > EndDate)
        {
            yield return new ValidationResult(
                "Start date must be earlier than or equal to end date.",
                new[] { nameof(StartDate), nameof(EndDate) });
        }
    }
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