using Dapper;
using infrastructure.ParametherModel;
using infrastructure.QueryModels;
using Microsoft.Extensions.Logging;
using Npgsql;


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

        public IEnumerable<InsertEventResult> GetAllEvents()
        {
            using var conn = _dataSource.OpenConnection();
            string sql = @"
                SELECT eventid, eventdate, eventdescription,eventtitle
                FROM kindergarten.calendarevents";

            return conn.Query<InsertEventResult>(sql).ToList();
        }


        public InsertEventResult InsertNewEvent(InsertEventParams insertEventParams)
        {
            using var conn = _dataSource.OpenConnection();
            return conn.QueryFirstOrDefault<InsertEventResult>(@"
        INSERT INTO kindergarten.calendarevents (eventdate, eventdescription,eventtitle)
        VALUES (@EventDate, @EventDescription,@EventTitle)
        RETURNING eventid, eventdate, eventdescription,eventtitle", insertEventParams);
        }


        public IEnumerable<InsertEventResult> GetEventsByDate(DateTime date)
        {
            using var conn = _dataSource.OpenConnection();
            string sql = @"
        SELECT eventid, eventdate, eventdescription,eventtitle
        FROM kindergarten.calendarevents
        WHERE DATE(eventdate) = @Date;";

            try
            {
                var events = conn.Query<InsertEventResult>(sql, new { Date = date.Date });
                return events;
            }
            catch (Exception ex)
            {
                _logger.LogError(ex, "Error retrieving events for date {Date}", date);
                throw;
            }
        }
    }
}
