using System.ComponentModel.DataAnnotations;
using System.Security.Authentication;
using api.EventFilters;
using api.Events.LogIn.Server;
using api.Helper;
using api.ServerEvents;
using api.WebSocket;
using Fleck;
using infrastructure.ParametherModel;
using infrastructure.Repository;
using lib;
using service.Security;

namespace api.Events.LogIn.Clients
{
    public class ClientWantsToAuthenticateWithJwtDto : BaseDto
    {
        [Required] public string? jwt { get; set; }
    }

    [ValidateDataAnnotations]
    public class ClientWantsToAuthenticateWithJwt(
        AuthenticationRepository authenticationRepository,
        TokenService tokenService,
        TokenBlacklistService tokenBlacklistService) : BaseEventHandler<ClientWantsToAuthenticateWithJwtDto>
    {
        public override async Task Handle(ClientWantsToAuthenticateWithJwtDto dto, IWebSocketConnection socket)
        {
            if (tokenBlacklistService.IsTokenBlacklisted(dto.jwt))
            {
                throw new AuthenticationException("Token is blacklisted");
            }

            var claims = tokenService.ValidateJwtAndReturnClaims(dto.jwt!);
            var user = authenticationRepository.GetUserByEmail(new FindByEmail(claims["email"]));

            WebSocketStateService.GetClient(socket.ConnectionInfo.Id).User = user;
            WebSocketStateService.GetClient(socket.ConnectionInfo.Id).IsAuthenticated = true;
            socket.SendDto(new ServerAuthenticatesUserFromJwt());
        }
    }
}