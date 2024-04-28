namespace infrastructure.ParametherModel;

public class InsertUser(string email, string hash, string salt)
{
    public string email { get; private set; } = email;
    public string hash { get; private set; } = hash;
    public string salt { get; private set; } = salt;
}