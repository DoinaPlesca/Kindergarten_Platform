using Dapper;
using infrastructure.ParametherModel;
using infrastructure.QueryModels;

using Microsoft.Extensions.Logging;
using Npgsql;

namespace infrastructure.Repository;

public class AnnouncementsRepository
{
    private readonly NpgsqlDataSource _dataSource;
    private readonly ILogger<AnnouncementsRepository> _logger;


    public AnnouncementsRepository(NpgsqlDataSource dataSource,
        ILogger<AnnouncementsRepository> logger)
    {
        _dataSource = dataSource;
        _logger = logger;
    }


    public InsertAnnouncementResult InsertAnnouncement(InsertAnnouncementParams insertAnnouncementParams)
    {
        using var conn = _dataSource.OpenConnection();
        return conn.QueryFirst<InsertAnnouncementResult>(@$"
    INSERT INTO kindergarten.announcements ( sender, content,timestamp)
        values (@{nameof(InsertAnnouncementResult.sender)},
        @{nameof(InsertAnnouncementResult.content)},
        @{nameof(InsertAnnouncementResult.timestamp)})
        returning
        sender as {nameof(InsertAnnouncementResult.sender)},
        content as {nameof(InsertAnnouncementResult.content)},
        timestamp as {nameof(InsertAnnouncementResult.timestamp)},
        id as {nameof(InsertAnnouncementResult.id)};", insertAnnouncementParams);
    }

    public void EditAnnouncement(EditAnnouncementParams editAnnouncementParams)
    {
        DateTimeOffset timestamp = DateTimeOffset.UtcNow;
        using var conn = _dataSource.OpenConnection();
        conn.Execute(@"
        UPDATE kindergarten.announcements
        SET
            content = @content,
            timestamp = @timestamp
        WHERE
            id = @id;",
            editAnnouncementParams);
    }

    public IEnumerable<AnnouncementWithSenderEmail> GetAllAnnouncements()
    {
        using var conn = _dataSource.OpenConnection();
        string sql = $@"
    SELECT 
        u.email AS {nameof(AnnouncementWithSenderEmail.email)},
        a.content AS {nameof(AnnouncementWithSenderEmail.content)},
        a.sender AS {nameof(AnnouncementWithSenderEmail.sender)},
        a.id AS {nameof(AnnouncementWithSenderEmail.id)},
        a.timestamp AS {nameof(AnnouncementWithSenderEmail.timestamp)}
    FROM kindergarten.announcements a
    JOIN kindergarten.user u ON a.sender = u.id";

        return conn.Query<AnnouncementWithSenderEmail>(sql).ToList();
    }


}