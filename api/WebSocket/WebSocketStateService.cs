
using Fleck;
using infrastructure.QueryModels;


namespace api.WebSocket;

public  class WsWithMetadata(IWebSocketConnection connection)
{
    public IWebSocketConnection Connection { get; set; } = connection;
    public bool IsAuthenticated { get; set; } = false;
    public User? User { get; set; }
}

public static class WebSocketStateService
{
    private static readonly Dictionary<Guid, WsWithMetadata> _clients = new();
    private static readonly Dictionary<Guid, HashSet<int>> _clientToRooms = new();
    private static readonly Dictionary<int, HashSet<Guid>> _roomsToClients = new();

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
        if (_clientToRooms.TryGetValue(clientId, out var rooms))
        {
            foreach (var room in rooms)
            {
                _roomsToClients[room].Remove(clientId);
                if (_roomsToClients[room].Count == 0) _roomsToClients.Remove(room);
            }

            _clientToRooms.Remove(clientId);
        }

        _clients.Remove(clientId);
    }

   
}