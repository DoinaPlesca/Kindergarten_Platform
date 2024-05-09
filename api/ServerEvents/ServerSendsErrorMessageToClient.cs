
using lib;

namespace api.ServerEvents

{
    public class ServerSendsErrorMessageToClient : BaseDto
    {
        public string? errorMessage { get; set; }
        public string? receivedMessage { get; set; }
       
    }
}