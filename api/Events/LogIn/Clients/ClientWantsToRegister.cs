using System.ComponentModel.DataAnnotations;
using api.EventFilters;
using api.Events.LogIn.Server;
using api.Helper;
using api.WebSocket;
using Fleck;
using infrastructure.ParametherModel;
using infrastructure.ParametherModel.LogIn;
using lib;
using service;
using service.Security;

namespace api.Events.LogIn.Clients;

public class ClientWantsToRegisterDto : BaseDto
{
    [EmailAddress] public string email { get; set; }

    [MinLength(4)] public string password { get; set; }
    
    public string name { get; set; }
   
}

[ValidateDataAnnotations]
public class ClientWantsToRegister : BaseEventHandler<ClientWantsToRegisterDto>
{
    private readonly UserService _userService;
    private readonly CredentialService _credentialService;
    private readonly TokenService _tokenService;

    public ClientWantsToRegister(
        UserService userService,
        CredentialService credentialService,
        TokenService tokenService
    )
    {
        _userService = userService;
        _credentialService = credentialService;
        _tokenService = tokenService;
    }

    public override Task Handle(ClientWantsToRegisterDto dto, IWebSocketConnection socket)
    {
        if (_userService.DoesUserAlreadyExist(new FindByEmail(dto.email)))
        {
            throw new ValidationException("User with this email already exists");
        }

        var salt = _credentialService.GenerateSalt();
        var hash = _credentialService.Hash(dto.password, salt);
        var user = _userService.InsertNewUser(new InsertUser(dto.email, hash, salt, dto.name));
        var token = _tokenService.IssueJwt(user);

        var clientState = WebSocketStateService.GetClient(socket.ConnectionInfo.Id);
        clientState.IsAuthenticated = true;
        clientState.User = user;

        socket.SendDto(new ServerAuthenticatesUser { jwt = token });

        return Task.CompletedTask;
    }
}