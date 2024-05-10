
using service.Security;

public class JwtMiddleware
{
    private readonly RequestDelegate _next;
    private readonly TokenBlacklistService _tokenBlacklistService;

    public JwtMiddleware(RequestDelegate next, TokenBlacklistService tokenBlacklistService)
    {
        _next = next;
        _tokenBlacklistService = tokenBlacklistService;
    }

    public async Task Invoke(HttpContext context)
    {
        var token = context.Request.Headers["Authorization"].FirstOrDefault()?.Split(" ").Last();

        if (token != null && _tokenBlacklistService.IsTokenBlacklisted(token))
        {
            context.Response.StatusCode = 401; 
            return;
        }

        await _next(context);
    }
}