namespace infrastructure.ParametherModel;

public class InsertAnnouncementParams (string? content, DateTimeOffset timestamp, int sender)
{
    public string? content { get; set; } = content;
    public DateTimeOffset timestamp { get; set; } = timestamp;
    public int sender { get; set; } = sender;
    public bool isread { get; set; }
    
    
    
}