
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
    
  

    public static void BroadcastMessageToAllExcept<T>(T dto, int excludeUserId) where T : BaseDto
    {
        foreach (var client in _clients.Values)
        {
            if (client?.User != null && client.User.id != excludeUserId && client.Connection != null && client.Connection.IsAvailable)
            {
                try
                {
                    client.Connection.SendDto(dto); 
                }
                catch (Exception ex)
                {
                    Serilog.Log.Error(ex, "Failed to send message to client {UserId}", client.User.id);
                }
            }
        }
    }

    


}

  


    

