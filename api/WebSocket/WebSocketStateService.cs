using api.Events.Announcement.Server;
using api.Helper;
using Fleck;
using infrastructure.QueryModels;
using lib;

namespace api.WebSocket;


public class WsWithMetadata(IWebSocketConnection connection)
{
    public IWebSocketConnection Connection { get; set; } = connection;
    public bool IsAuthenticated { get; set; } = false;
    public User? User { get; set; }
    public List<BaseDto> MessageQueue { get; set; } = new List<BaseDto>();
   
}

public static class WebSocketStateService
{
    private static readonly Dictionary<Guid, WsWithMetadata> _clients = new();

    public static WsWithMetadata GetClient(Guid clientId)
    {
        return _clients[clientId];
    }

    public static void AddClient(Guid clientId, IWebSocketConnection connection)
    {
        _clients.TryAdd(clientId, new WsWithMetadata(connection));
    }

    public static void RemoveClient(Guid clientId)
    {
        _clients.Remove(clientId);
    }
    
    public static void BroadcastMessage<T>(T dto) where T : BaseDto
    {
        foreach (var clientId in _clients.Keys)
        {
            if (_clients.TryGetValue(clientId, out var connection))
            {
                connection.Connection.SendDto(dto);
            }
        }
    }
    


}

  


    

