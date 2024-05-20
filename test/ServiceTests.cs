
using NUnit.Framework;
using Moq;
using Serilog;
using service.Security;

namespace test
{
    [TestFixture]
    public class CredentialServiceTests
    {
        private CredentialService _credentialService;

        [SetUp]
        public void Setup()
        {
            _credentialService = new CredentialService();
        }

        [Test]
        public void GenerateSalt_ShouldReturnBase64String()
        {
            // Act
            var salt = _credentialService.GenerateSalt();

            // Assert
            Assert.That(salt, Is.Not.Null.And.Not.Empty);
            Assert.DoesNotThrow(() => Convert.FromBase64String(salt));
        }

        [Test]
        public void Hash_ShouldReturnBase64String()
        {
            // Arrange
            var password = "password";
            var salt = _credentialService.GenerateSalt();

            // Act
            var hash = _credentialService.Hash(password, salt);

            // Assert
            Assert.That(hash, Is.Not.Null.And.Not.Empty);
            Assert.DoesNotThrow(() => Convert.FromBase64String(hash));
        }

        [Test]
        public void Hash_ShouldLogErrorAndThrowException_WhenExceptionOccurs()
        {
            // Arrange
            var password = "password";
            string salt = null; 
            var mockLogger = new Mock<ILogger>();
            Log.Logger = mockLogger.Object;

            try
            {
                // Act
                _credentialService.Hash(password, salt);
            }
            catch (InvalidOperationException ex)
            {
                // Assert
                Assert.That(ex.Message, Is.EqualTo("Failed to hash password"));
                mockLogger.Verify(l => l.Error(It.IsAny<Exception>(), "Hash"), Times.Once);
            }
        }
    
    }
}