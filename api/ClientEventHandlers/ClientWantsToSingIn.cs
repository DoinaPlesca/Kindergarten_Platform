using System.Security.Authentication;
using api.Helper;
using api.ServerEvents;
using api.WebSocket;
using Fleck;
using infrastructure.ParametherModel;
using infrastructure.Repository;
using lib;
using service.Security;

namespace api.ClientEventHandlers;

public class ClientWantsToSignInDto : BaseDto
{
    public string email { get; set; }
    public string password { get; set; }
}

public class ClientWantsToAuthenticate(
        AuthenticationRepository authenticationRepository,
        TokenService tokenService,
        CredentialService credentialService)
    : BaseEventHandler<ClientWantsToSignInDto>
{
    // public override Task Handle(ClientWantsToSignInDto request, IWebSocketConnection socket)
    // {
    //
    //     var user = authenticationRepository.GetUserByEmail(new FindByEmail(request.email!));
    //     if (user.isparent) throw new AuthenticationException("User is parent");
    //     var expectedHash = credentialService.Hash(request.password!, user.salt!);
    //     if (!expectedHash.Equals(user.hash)) throw new AuthenticationException("Wrong credentials!");
    //     WebSocketStateService.GetClient(socket.ConnectionInfo.Id).IsAuthenticated = true;
    //     WebSocketStateService.GetClient(socket.ConnectionInfo.Id).User = user;
    //     socket.SendDto(new ServerAuthenticatesUser { jwt = tokenService.IssueJwt(user) });
    //     return Task.CompletedTask;
    // }
    
    /*public override Task Handle(ClientWantsToSignInDto request, IWebSocketConnection socket)
    {
        var user = authenticationRepository.GetUserByEmail(new FindByEmail(request.email!));
        if(user == null)
        {
            throw new AuthenticationException("User not found");
        }
        var expectedHash = credentialService.Hash(request.password!, user.salt!);
        

        /#1#/ 
        if (user.isparent)
        {
            throw new AuthenticationException("User is parent");
        } 
        else if(user.isteacher)
        {
            throw new AuthenticationException("User is teacher");   
        }#1#
    
        WebSocketStateService.GetClient(socket.ConnectionInfo.Id).IsAuthenticated = true;
        WebSocketStateService.GetClient(socket.ConnectionInfo.Id).User = user;
        socket.SendDto(new ServerAuthenticatesUser { jwt = tokenService.IssueJwt(user) });
        return Task.CompletedTask;
    }*/
    
    public override Task Handle(ClientWantsToSignInDto request, IWebSocketConnection socket)
    {
        var user = authenticationRepository.GetUserByEmail(new FindByEmail(request.email!));
        if(user == null)
        {
            throw new AuthenticationException("User not found");
        }
        var expectedHash = credentialService.Hash(request.password!, user.salt!);

        WebSocketStateService.GetClient(socket.ConnectionInfo.Id).IsAuthenticated = true;
        WebSocketStateService.GetClient(socket.ConnectionInfo.Id).User = user;
    
        var authResponseDto = new ServerAuthenticatesUser()
        {
            jwt = tokenService.IssueJwt(user),
            email = user.email,
            isParent = user.isparent,
            isTeacher = user.isteacher
        };
    
        socket.SendDto(authResponseDto);
        return Task.CompletedTask;
    }


}
