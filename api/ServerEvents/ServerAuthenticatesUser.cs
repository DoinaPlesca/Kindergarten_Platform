﻿using lib;

namespace api.ServerEvents;

public class ServerAuthenticatesUser : BaseDto
{
    public string jwt { get; set; }
    public string email { get; set; }
    public bool isParent { get; set; }
    public bool isTeacher { get; set; }}
