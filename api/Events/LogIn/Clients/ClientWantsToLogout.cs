
using System.ComponentModel.DataAnnotations;
using api.Events.LogIn.Server;
using api.Helper;
using api.WebSocket;
using Fleck;
using lib;
using service.Security;

namespace api.Events.LogIn.Clients
{
    public class ClientWantsToLogoutDto : BaseDto
    {
        [Required] public string jwt { get; set; }
    }

    public class ClientWantsToLogout : BaseEventHandler<ClientWantsToLogoutDto>
    {
        private readonly TokenBlacklistService _tokenBlacklistService;

        public ClientWantsToLogout(TokenBlacklistService tokenBlacklistService)
        {
            _tokenBlacklistService = tokenBlacklistService;
        }

        public override async Task Handle(ClientWantsToLogoutDto request, IWebSocketConnection socket)
        {
            var client = WebSocketStateService.GetClient(socket.ConnectionInfo.Id);
            if (client != null && client.IsAuthenticated)
            {
                _tokenBlacklistService.BlacklistToken(request.jwt);

                client.IsAuthenticated = false;
                client.User = null;

                socket.SendDto(new ServerLogoutUser());
               
            }

            await Task.CompletedTask;
        }
    }
}