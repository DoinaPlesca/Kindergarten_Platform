using System.ComponentModel.DataAnnotations;
using service.Security;
using Fleck;
using api.WebSocket;
using System.Security.Authentication;
using api.Events.Announcement.Server;
using api.Events.LogIn.Server;
using api.Helper;
using infrastructure.ParametherModel;
using infrastructure.Repository;
using lib;
using service;

namespace api.Events.LogIn.Clients
{
    public class ClientWantsToSignInDto : BaseDto
    {
        [Required(ErrorMessage = "Email address is required.")]
        [EmailAddress(ErrorMessage = "Invalid email address.")]
        public string email { get; set; }
        
        [Required(ErrorMessage = "Password is required.")]
        [StringLength(100, ErrorMessage = "The password must be at least {2} characters long.", MinimumLength = 4)]
        public string password { get; set; }
    }

    public class ClientWantsToAuthenticate : BaseEventHandler<ClientWantsToSignInDto>
    {
        private readonly AuthenticationRepository _authenticationRepository;
        private readonly TokenService _tokenService;
        private readonly CredentialService _credentialService;
        private readonly ChildService _childService;
        private readonly AnnouncementService _announcementService;

        public ClientWantsToAuthenticate(
            AuthenticationRepository authenticationRepository,
            TokenService tokenService,
            CredentialService credentialService,
            ChildService childService,
            AnnouncementService announcementService)
        {
            _authenticationRepository = authenticationRepository;
            _tokenService = tokenService;
            _credentialService = credentialService;
            _childService = childService;
            _announcementService = announcementService;
        }

        public override async Task Handle(ClientWantsToSignInDto request, IWebSocketConnection socket)
        {
            var user = _authenticationRepository.GetUserByEmail(new FindByEmail(request.email!));
            if (user == null)
            {
                throw new AuthenticationException("User not found");
            }

            var expectedHash = _credentialService.Hash(request.password!, user.salt!);

            if (!expectedHash.SequenceEqual(user.hash!))
            {
                throw new AuthenticationException("Wrong credentials");
            }

            WebSocketStateService.GetClient(socket.ConnectionInfo.Id).IsAuthenticated = true;
            WebSocketStateService.GetClient(socket.ConnectionInfo.Id).User = user;


            List<GetChildParams> children = new List<GetChildParams>();
            if (user.isparent)
            {
                children = await _childService.GetChildrenByParentId(user.id);
            }
            else if (user.isteacher)
            {
                
                children = await _childService.GetAllChildren(); 
            }

            var authResponseDto = new ServerAuthenticatesUser()
            {
                jwt = _tokenService.IssueJwt(user),
                email = user.email,
                isParent = user.isparent,
                isTeacher = user.isteacher,
                name = user.name,
                Children = children 
            };

            socket.SendDto(authResponseDto);

            var unreadAnnouncements = _announcementService.GetUnreadAnnouncementsForUser(user.id);
            socket.SendDto(new ServerUnreadAnnouncements
            {
                UnreadAnnouncements = unreadAnnouncements.ToList()
            });
        }
    }
}