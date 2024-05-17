namespace infrastructure.ParametherModel.LogIn;

public class InsertUser(string email, string hash, string salt, string name)
{
    public string email { get; private set; } = email;
    public string hash { get; private set; } = hash;
    public string salt { get; private set; } = salt;
    public string name { get; private set; } = name;
}