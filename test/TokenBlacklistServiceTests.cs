using NUnit.Framework;
using service.Security;

namespace test
{
    [TestFixture]
    public class TokenBlacklistServiceTests
    {
        private TokenBlacklistService _tokenBlacklistService;

        [SetUp]
        public void Setup()
        {
            _tokenBlacklistService = new TokenBlacklistService();
        }

        [Test]
        public void BlacklistToken_ShouldAddTokenToBlacklist()
        {
            // Arrange
            var token = "testToken";

            // Act
            _tokenBlacklistService.BlacklistToken(token);

            // Assert
            Assert.That(_tokenBlacklistService.IsTokenBlacklisted(token), Is.True);
        }

        [Test]
        public void IsTokenBlacklisted_ShouldReturnFalse_WhenTokenIsNotBlacklisted()
        {
            // Arrange
            var token = "testToken";

            // Act
            var result = _tokenBlacklistService.IsTokenBlacklisted(token);

            // Assert
            Assert.That(result, Is.False);
        }

        [Test]
        public void IsTokenBlacklisted_ShouldReturnTrue_WhenTokenIsBlacklisted()
        {
            // Arrange
            var token = "testToken";
            _tokenBlacklistService.BlacklistToken(token);

            // Act
            var result = _tokenBlacklistService.IsTokenBlacklisted(token);

            // Assert
            Assert.That(result, Is.True);
        }
    }
}