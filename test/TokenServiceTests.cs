using infrastructure.QueryModels;
using Moq;
using NUnit.Framework;
using Serilog;
using service.Security;

namespace test
{
    [TestFixture]
    public class TokenServiceTests
    {
        private TokenService _tokenService;
        private Mock<ILogger> _mockLogger;
        private string _originalJwtKey;

        [SetUp]
        public void Setup()
        {
            _mockLogger = new Mock<ILogger>();
            Log.Logger = _mockLogger.Object;
            _tokenService = new TokenService();
            _originalJwtKey = Environment.GetEnvironmentVariable("JWTKEY");
        }

        [TearDown]
        public void TearDown()
        {
            Environment.SetEnvironmentVariable("JWTKEY", _originalJwtKey);
        }

        [Test]
        public void IssueJwt_ShouldReturnToken()
        {
            // Arrange
            var user = new User { id = 1, email = "test@example.com" };
            var jwtKey = "test_key";
            Environment.SetEnvironmentVariable("JWTKEY", jwtKey);

            // Act
            var token = _tokenService.IssueJwt(user);

            // Assert
            Assert.That(token, Is.Not.Null.And.Not.Empty);
        }
        
        
        [Test]
        public void ValidateJwtAndReturnClaims_ShouldReturnClaims()
        {
            // Arrange
            var user = new User { id = 1, email = "test@example.com" };
            var jwtKey = "test_key";
            Environment.SetEnvironmentVariable("JWTKEY", jwtKey);
            var token = _tokenService.IssueJwt(user);

            // Act
            var claims = _tokenService.ValidateJwtAndReturnClaims(token);

            // Assert
            Assert.That(claims, Is.Not.Null);
            Assert.That(claims["id"], Is.EqualTo(user.id.ToString()));
            Assert.That(claims["email"], Is.EqualTo(user.email));
        }
    }
}
