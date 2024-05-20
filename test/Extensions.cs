using Dapper;
using Moq;
using Npgsql;

namespace test;


public static class DapperMockExtensions
{
    public static void SetupDapperQueryFirst<T>(this Mock<NpgsqlConnection> mockConnection, string sql, T result)
    {
        mockConnection.Setup(conn => conn.QueryFirst<T>(sql, It.IsAny<object>(), null, null, null)).Returns(result);
    }

    public static void SetupDapperQuery<T>(this Mock<NpgsqlConnection> mockConnection, string sql, IEnumerable<T> result)
    {
        mockConnection.Setup(conn => conn.Query<T>(sql, It.IsAny<object>(), null, true, null, null)).Returns(result);
    }

    public static void SetupDapperExecute(this Mock<NpgsqlConnection> mockConnection, string sql, int result)
    {
        mockConnection.Setup(conn => conn.Execute(sql, It.IsAny<object>(), null, null, null)).Returns(result);
    }
}