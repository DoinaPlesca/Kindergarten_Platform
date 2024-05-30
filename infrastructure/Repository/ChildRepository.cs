using Dapper;
using infrastructure.ParametherModel;
using Microsoft.Extensions.Logging;
using Npgsql;

namespace infrastructure.Repository;

public class ChildRepository
{
    private readonly NpgsqlDataSource _dataSource;
    private readonly ILogger<ChildRepository> _logger;


    public ChildRepository(NpgsqlDataSource dataSource,
        ILogger<ChildRepository> logger)
    {
        _dataSource = dataSource;
        _logger = logger;
    }


    public async Task<List<GetChildParams>> GetChildrenByParentId(int parentId)
    {
        var sql = @"SELECT childid, firstname, lastname, image
                FROM kindergarten.children 
                WHERE parentid = @parentid;";

        await using (var connection = _dataSource.OpenConnection())
        {
            try
            {
                var children = await connection.QueryAsync<GetChildParams>(sql, new { parentid = parentId });
                return children.ToList();
            }
            catch (Exception ex)
            {
                _logger.LogError(ex, "Error retrieving children for parent ID {ParentId}", parentId);
                throw;
            }
        }
    }

    public async Task<List<GetChildParams>> GetAllChildren()
    {
        using var conn = _dataSource.OpenConnection();
        string sql = @"
            SELECT 
                firstname AS firstname,
                lastname AS lastname,
                image AS image
            FROM kindergarten.children
        ";
        
        var children = await conn.QueryAsync<GetChildParams>(sql);
        return children.ToList();
    }

}