using infrastructure.ParametherModel;
using infrastructure.QueryModels;
using lib;

namespace api.Events.LogIn.Server;

public class ServerAuthenticatesUser : BaseDto
{
    public string jwt { get; set; }
    public string email { get; set; }
    public bool isParent { get; set; }
    public bool isTeacher { get; set; }
    public string name { get; set; }
    public List<GetChildParams> Children { get; set; } = new List<GetChildParams>();
}
