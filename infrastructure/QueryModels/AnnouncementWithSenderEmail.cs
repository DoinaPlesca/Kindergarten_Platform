namespace infrastructure.QueryModels;
public class AnnouncementWithSenderEmail
{
    public int id { get; set; }
    public DateTimeOffset timestamp { get; set; }
    public string? content { get; set; }
    public int sender { get; set; }
    public string? email { get; set; }
    public bool isread { get; set; } 
}