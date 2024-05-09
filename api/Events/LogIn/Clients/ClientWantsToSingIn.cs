using System.Security.Authentication;
using api.Events.LogIn.Server;
using api.Helper;
using api.WebSocket;
using Fleck;
using infrastructure.ParametherModel;
using infrastructure.Repository;
using lib;
using service;
using service.Security;

namespace api.Events.LogIn.Clients;

public class ClientWantsToSignInDto : BaseDto
{
    public string email { get; set; }
    public string password { get; set; }
}


public class ClientWantsToAuthenticate(
        AuthenticationRepository authenticationRepository,
        TokenService tokenService,
        CredentialService credentialService,
        ChildService childService)
    : BaseEventHandler<ClientWantsToSignInDto>
{
    
    public override  async Task Handle(ClientWantsToSignInDto request, IWebSocketConnection socket)
    {
        var user = authenticationRepository.GetUserByEmail(new FindByEmail(request.email!));
        if(user == null)
        {
            throw new AuthenticationException("User not found");
        }
        var expectedHash = credentialService.Hash(request.password!, user.salt!);
        
        /*if (!expectedHash.SequenceEqual(user.hash!))
        {
            throw new AuthenticationException("Wrong credentials");
        }*/
        
        WebSocketStateService.GetClient(socket.ConnectionInfo.Id).IsAuthenticated = true;
        WebSocketStateService.GetClient(socket.ConnectionInfo.Id).User = user;
    
        var authResponseDto = new ServerAuthenticatesUser()
        {
            jwt = tokenService.IssueJwt(user),
            email = user.email,
            isParent = user.isparent,
            isTeacher = user.isteacher,
            name = user.name,
            Children = user.isparent?  await childService.GetChildrenByParentId(user.id) : new List<GetChildParams>()
        };
    
        socket.SendDto(authResponseDto);
       
    }


}

