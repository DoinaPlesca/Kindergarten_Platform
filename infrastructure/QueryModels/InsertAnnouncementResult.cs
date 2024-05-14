namespace infrastructure.QueryModels;

public class InsertAnnouncementResult
{
    public int id { get; set; }
    public int sender { get; set; }
    public string? content { get; set; }
    public DateTimeOffset timestamp { get; set; }
    
    public bool isread { get; set; }
   
}