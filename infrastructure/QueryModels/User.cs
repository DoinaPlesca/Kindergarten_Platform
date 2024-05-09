namespace infrastructure.QueryModels;

public class User
{
    public int id { get; set; }
    public string? email { get; set; }
    public string? hash { get; set; }
    public string? salt { get; set; }
    public bool isparent { get; set; }
    public bool isteacher { get; set; }
    public string name { get; set; }
}