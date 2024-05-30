using Dapper;
using infrastructure.ParametherModel;
using infrastructure.ParametherModel.LogIn;
using infrastructure.QueryModels;
using Microsoft.Extensions.Logging;
using Npgsql;

namespace infrastructure.Repository;

public class AuthenticationRepository
{
    private readonly NpgsqlDataSource _dataSource;
    private readonly ILogger<AuthenticationRepository> _logger;


    public AuthenticationRepository(NpgsqlDataSource dataSource,
        ILogger<AuthenticationRepository> logger)
    {
        _dataSource = dataSource;
        _logger = logger;
    }


    public User GetUserByEmail(FindByEmail findByEmail)
    {
        using var conn = _dataSource.OpenConnection();
        return conn.QueryFirstOrDefault<User>($@"
                        select 
                            id as {nameof(User.id)}, 
                            email as {nameof(User.email)},
                            hash as {nameof(User.hash)},
                            salt as {nameof(User.salt)},
                            isteacher as {nameof(User.isteacher)},
                            isparent as {nameof(User.isparent)},
                            name as {nameof(User.name)}
                        from kindergarten.user where email = @{nameof(FindByEmail.email)};", findByEmail) ??
               throw new KeyNotFoundException("Could not find user with email " + findByEmail.email);
    }


    public User InsertNewUser(InsertUser insertUser)
    {
        using var conn = _dataSource.OpenConnection();
        return conn.QueryFirstOrDefault<User>(@$"
    insert into kindergarten.user (email, hash, salt, isteacher, isparent, name)
    values (
            @{nameof(InsertUser.email)},
            @{nameof(InsertUser.hash)},
            @{nameof(InsertUser.salt)},
            false,
            true,
            @{nameof(InsertUser.name)}
    )
    returning 
            email as {nameof(User.email)},
            isteacher as {nameof(User.isteacher)},
            isparent as {nameof(User.isparent)},
            name as {nameof(User.name)},
            id as {nameof(User.id)};", insertUser)
               ?? throw new InvalidOperationException("Insertion and retrieval failed");
    }




    public bool DoesUserAlreadyExist(FindByEmail findByEmail)
    {
        using var conn = _dataSource.OpenConnection();
        return conn.ExecuteScalar<int>(@$"
select count(*) from kindergarten.user where email = @{nameof(findByEmail.email)};", findByEmail) == 1;
    }
}