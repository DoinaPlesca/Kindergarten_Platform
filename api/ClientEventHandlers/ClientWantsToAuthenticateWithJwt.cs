
using System.ComponentModel.DataAnnotations;
using System.Security.Authentication;
using api.ClientEventFilters;
using api.Helper;
using api.ServerEvents;
using api.WebSocket;
using Fleck;
using infrastructure.ParametherModel;
using infrastructure.Repository;
using lib;
using service.Security;

namespace api.ClientEventHandlers;

public class ClientWantsToAuthenticateWithJwtDto : BaseDto
{
    [Required] public string? jwt { get; set; }
}


[ValidateDataAnnotations]
public class ClientWantsToAuthenticateWithJwt(
         AuthenticationRepository authenticationRepository,
         TokenService tokenService)
    : BaseEventHandler<ClientWantsToAuthenticateWithJwtDto>
{
    // public override async Task Handle(ClientWantsToAuthenticateWithJwtDto dto, IWebSocketConnection socket)
    // {
    //     var claims = tokenService.ValidateJwtAndReturnClaims(dto.jwt!);
    //     var user = authenticationRepository.GetUserByEmail(new FindByEmail(claims["email"]));
    //     if (user.isparent)
    //         throw new AuthenticationException("User is parent");
    //     WebSocketStateService.GetClient(socket.ConnectionInfo.Id).User = user;
    //     WebSocketStateService.GetClient(socket.ConnectionInfo.Id).IsAuthenticated = true;
    //     socket.SendDto(new ServerAuthenticatesUserFromJwt());
    // }
    
    public override async Task Handle(ClientWantsToAuthenticateWithJwtDto dto, IWebSocketConnection socket)
    {
        var claims = tokenService.ValidateJwtAndReturnClaims(dto.jwt!);
        var user = authenticationRepository.GetUserByEmail(new FindByEmail(claims["email"]));

        /*// If you want to allow parents and teachers to authenticate with JWT, remove the following checks:
        if (user.isparent)
        {
            throw new AuthenticationException("User is parent");
        }
        else if (user.isteacher)
        {
            throw new AuthenticationException("User is teacher");
        }*/

        WebSocketStateService.GetClient(socket.ConnectionInfo.Id).User = user;
        WebSocketStateService.GetClient(socket.ConnectionInfo.Id).IsAuthenticated = true;
        socket.SendDto(new ServerAuthenticatesUserFromJwt());
    }

}

