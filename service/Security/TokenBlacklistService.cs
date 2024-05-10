using System.Collections.Concurrent;


namespace service.Security
{
    public class TokenBlacklistService
    {
        private readonly ConcurrentDictionary<string, bool> _blacklist = new ConcurrentDictionary<string, bool>();

        public void BlacklistToken(string token)
        {
            _blacklist[token] = true;
        }

        public bool IsTokenBlacklisted(string token)
        {
            return _blacklist.ContainsKey(token);
        }
    }
}
