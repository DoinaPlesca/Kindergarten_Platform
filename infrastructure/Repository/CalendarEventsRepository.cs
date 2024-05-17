using Dapper;
using Microsoft.Extensions.Logging;
using Npgsql;
using infrastructure.QueryModels;

namespace infrastructure.Repository
{
    public class CalendarEventsRepository
    {
        private readonly NpgsqlDataSource _dataSource;
        private readonly ILogger<CalendarEventsRepository> _logger;

        public CalendarEventsRepository(NpgsqlDataSource dataSource,
            ILogger<CalendarEventsRepository> logger)
        {
            _dataSource = dataSource;
            _logger = logger;
        }
        

        public InsertEventResult InsertNewEvent(InsertEventResult newEvent)
        {
            using var conn = _dataSource.OpenConnection();
            return conn.QueryFirstOrDefault<InsertEventResult>(@"
                INSERT INTO kindergarten.calendarevents (eventdate, eventdescription, eventtitle)
                VALUES (@eventdate, @eventdescription, @eventtitle)
                RETURNING eventid, eventdate, eventdescription, eventtitle", newEvent);
        }

     

        public List<InsertEventResult> GetEventsByDateRange(DateTime startDate, DateTime endDate)
        {
            using var conn = _dataSource.OpenConnection();
            string sql = @"
            SELECT eventid, eventdate, eventdescription, eventtitle
            FROM kindergarten.calendarevents
            WHERE eventdate BETWEEN @StartDate AND @EndDate;";

            try
            {
                var events = conn.Query<InsertEventResult>(sql, new { StartDate = startDate, EndDate = endDate })
                    .ToList();
                return events;
            }
            catch (Exception ex)
            {
                _logger.LogError(ex, "Error retrieving events between {StartDate} and {EndDate}", startDate, endDate);
                throw;
            }
        }
    }
}