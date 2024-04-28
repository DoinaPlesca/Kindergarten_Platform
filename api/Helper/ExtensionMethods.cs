using System.Text.Json;
using Fleck;


namespace api.Helper;

public static class ExtensionMethods
{
    public static void SendDto<T>(this IWebSocketConnection ws, T dto)
    {
        ws.Send(JsonSerializer.Serialize(dto) ?? throw new ArgumentException("Failed to serialize dto"));
    }
}