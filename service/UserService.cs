using infrastructure.ParametherModel;
using infrastructure.ParametherModel.LogIn;
using infrastructure.QueryModels;
using infrastructure.Repository;

namespace service;

public class UserService
{
    private readonly AuthenticationRepository _authenticationRepository;

    public UserService(AuthenticationRepository authenticationRepository)
    {
        _authenticationRepository= authenticationRepository;
    }
    
    public User InsertNewUser(InsertUser insertUser)
    {
        return _authenticationRepository.InsertNewUser(insertUser);
    }

    public bool DoesUserAlreadyExist(FindByEmail findByEmail)
    {
        return _authenticationRepository.DoesUserAlreadyExist(findByEmail);
    }
}