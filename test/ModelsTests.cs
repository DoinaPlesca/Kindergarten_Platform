
using infrastructure.QueryModels;
using NUnit.Framework;

namespace test
{
    [TestFixture]
    public class ModelsTests
    {
        [Test]
        public void Test_AnnouncementWithSenderEmail_DefaultValues()
        {
            // Arrange
            var announcement = new AnnouncementWithSenderEmail();

            // Act & Assert
            Assert.Multiple(() =>
            {
                Assert.That(announcement.id, Is.EqualTo(0));
                Assert.That(announcement.timestamp, Is.EqualTo(default(DateTimeOffset)));
                Assert.That(announcement.content, Is.Null);
                Assert.That(announcement.sender, Is.EqualTo(0));
                Assert.That(announcement.email, Is.Null);
                Assert.That(announcement.isread, Is.False);
            });
        }

        [Test]
        public void Test_AnnouncementWithSenderEmail_SetValues()
        {
            // Arrange
            var timestamp = DateTimeOffset.Now;
            var announcement = new AnnouncementWithSenderEmail
            {
                id = 1,
                timestamp = timestamp,
                content = "Test content",
                sender = 123,
                email = "test@example.com",
                isread = true
            };

            // Act & Assert
            Assert.Multiple(() =>
            {
                Assert.That(announcement.id, Is.EqualTo(1));
                Assert.That(announcement.timestamp, Is.EqualTo(timestamp));
                Assert.That(announcement.content, Is.EqualTo("Test content"));
                Assert.That(announcement.sender, Is.EqualTo(123));
                Assert.That(announcement.email, Is.EqualTo("test@example.com"));
                Assert.That(announcement.isread, Is.True);
            });
        }

        [Test]
        public void Test_AnnouncementWithSenderEmail_DefaultValues_AfterReset()
        {
            // Arrange
            var announcement = new AnnouncementWithSenderEmail
            {
                id = 1,
                timestamp = DateTimeOffset.Now,
                content = "Test content",
                sender = 123,
                email = "test@example.com",
                isread = true
            };

            // Act
            announcement.id = 0;
            announcement.timestamp = default(DateTimeOffset);
            announcement.content = null;
            announcement.sender = 0;
            announcement.email = null;
            announcement.isread = false;

            // Assert
            Assert.Multiple(() =>
            {
                Assert.That(announcement.id, Is.EqualTo(0));
                Assert.That(announcement.timestamp, Is.EqualTo(default(DateTimeOffset)));
                Assert.That(announcement.content, Is.Null);
                Assert.That(announcement.sender, Is.EqualTo(0));
                Assert.That(announcement.email, Is.Null);
                Assert.That(announcement.isread, Is.False);
            });
        }

        [Test]
        public void Test_Gallery_DefaultValues()
        {
            // Arrange
            var gallery = new Gallery();

            // Act & Assert
            Assert.Multiple(() =>
            {
                Assert.That(gallery.photoid, Is.EqualTo(0));
                Assert.That(gallery.photourl, Is.Null);
                Assert.That(gallery.description, Is.Null);
            });
        }

        [Test]
        public void Test_Gallery_SetValues()
        {
            // Arrange
            var gallery = new Gallery
            {
                photoid = 1,
                photourl = "http://example.com/photo.jpg",
                description = "A beautiful sunset"
            };

            // Act & Assert
            Assert.Multiple(() =>
            {
                Assert.That(gallery.photoid, Is.EqualTo(1));
                Assert.That(gallery.photourl, Is.EqualTo("http://example.com/photo.jpg"));
                Assert.That(gallery.description, Is.EqualTo("A beautiful sunset"));
            });
        }

        [Test]
        public void Test_Gallery_DefaultValues_AfterReset()
        {
            // Arrange
            var gallery = new Gallery
            {
                photoid = 1,
                photourl = "http://example.com/photo.jpg",
                description = "A beautiful sunset"
            };

            // Act
            gallery.photoid = 0;
            gallery.photourl = null;
            gallery.description = null;

            // Assert
            Assert.Multiple(() =>
            {
                Assert.That(gallery.photoid, Is.EqualTo(0));
                Assert.That(gallery.photourl, Is.Null);
                Assert.That(gallery.description, Is.Null);
            });
        }


        [Test]
        public void Test_InsertAnnouncementResult_DefaultValues()
        {
            // Arrange
            var result = new InsertAnnouncementResult();

            // Act & Assert
            Assert.Multiple(() =>
            {
                Assert.That(result.id, Is.EqualTo(0));
                Assert.That(result.sender, Is.EqualTo(0));
                Assert.That(result.content, Is.Null);
                Assert.That(result.timestamp, Is.EqualTo(default(DateTimeOffset)));
                Assert.That(result.isread, Is.False);
            });
        }

        [Test]
        public void Test_InsertAnnouncementResult_SetValues()
        {
            // Arrange
            var timestamp = DateTimeOffset.Now;
            var result = new InsertAnnouncementResult
            {
                id = 1,
                sender = 123,
                content = "Test content",
                timestamp = timestamp,
                isread = true
            };

            // Act & Assert
            Assert.Multiple(() =>
            {
                Assert.That(result.id, Is.EqualTo(1));
                Assert.That(result.sender, Is.EqualTo(123));
                Assert.That(result.content, Is.EqualTo("Test content"));
                Assert.That(result.timestamp, Is.EqualTo(timestamp));
                Assert.That(result.isread, Is.True);
            });
        }

        [Test]
        public void Test_InsertAnnouncementResult_DefaultValues_AfterReset()
        {
            // Arrange
            var result = new InsertAnnouncementResult
            {
                id = 1,
                sender = 123,
                content = "Test content",
                timestamp = DateTimeOffset.Now,
                isread = true
            };

            // Act
            result.id = 0;
            result.sender = 0;
            result.content = null;
            result.timestamp = default(DateTimeOffset);
            result.isread = false;

            // Assert
            Assert.Multiple(() =>
            {
                Assert.That(result.id, Is.EqualTo(0));
                Assert.That(result.sender, Is.EqualTo(0));
                Assert.That(result.content, Is.Null);
                Assert.That(result.timestamp, Is.EqualTo(default(DateTimeOffset)));
                Assert.That(result.isread, Is.False);
            });
        }

        [Test]
        public void Test_InsertEventResult_DefaultValues()
        {
            // Arrange
            var result = new InsertEventResult();

            // Act & Assert
            Assert.Multiple(() =>
            {
                Assert.That(result.eventid, Is.EqualTo(0));
                Assert.That(result.eventdate, Is.EqualTo(default(DateTime)));
                Assert.That(result.eventdescription, Is.Null.Or.Empty);
                Assert.That(result.eventtitle, Is.Null.Or.Empty);
            });
        }

        [Test]
        public void Test_InsertEventResult_SetValues()
        {
            // Arrange
            var eventDate = DateTime.Now;
            var result = new InsertEventResult
            {
                eventid = 1,
                eventdate = eventDate,
                eventdescription = "Test event description",
                eventtitle = "Test event title"
            };

            // Act & Assert
            Assert.Multiple(() =>
            {
                Assert.That(result.eventid, Is.EqualTo(1));
                Assert.That(result.eventdate, Is.EqualTo(eventDate));
                Assert.That(result.eventdescription, Is.EqualTo("Test event description"));
                Assert.That(result.eventtitle, Is.EqualTo("Test event title"));
            });
        }

        [Test]
        public void Test_InsertEventResult_DefaultValues_AfterReset()
        {
            // Arrange
            var result = new InsertEventResult
            {
                eventid = 1,
                eventdate = DateTime.Now,
                eventdescription = "Test event description",
                eventtitle = "Test event title"
            };

            // Act
            result.eventid = 0;
            result.eventdate = default(DateTime);
            result.eventdescription = string.Empty;
            result.eventtitle = string.Empty;

            // Assert
            Assert.Multiple(() =>
            {
                Assert.That(result.eventid, Is.EqualTo(0));
                Assert.That(result.eventdate, Is.EqualTo(default(DateTime)));
                Assert.That(result.eventdescription, Is.Null.Or.Empty);
                Assert.That(result.eventtitle, Is.Null.Or.Empty);
            });
        }


        [Test]
        public void Test_User_DefaultValues()
        {
            // Arrange
            var user = new User();

            // Act & Assert
            Assert.Multiple(() =>
            {
                Assert.That(user.id, Is.EqualTo(0));
                Assert.That(user.email, Is.Null);
                Assert.That(user.hash, Is.Null);
                Assert.That(user.salt, Is.Null);
                Assert.That(user.isparent, Is.False);
                Assert.That(user.isteacher, Is.False);
                Assert.That(user.name, Is.Null.Or.Empty);
            });
        }

        [Test]
        public void Test_User_SetValues()
        {
            // Arrange
            var user = new User
            {
                id = 1,
                email = "test@example.com",
                hash = "hashedpassword",
                salt = "saltvalue",
                isparent = true,
                isteacher = false,
                name = "Jimmy"
            };

            // Act & Assert
            Assert.Multiple(() =>
            {
                Assert.That(user.id, Is.EqualTo(1));
                Assert.That(user.email, Is.EqualTo("test@example.com"));
                Assert.That(user.hash, Is.EqualTo("hashedpassword"));
                Assert.That(user.salt, Is.EqualTo("saltvalue"));
                Assert.That(user.isparent, Is.True);
                Assert.That(user.isteacher, Is.False);
                Assert.That(user.name, Is.EqualTo("Jimmy"));
            });
        }

        [Test]
        public void Test_User_DefaultValues_AfterReset()
        {
            // Arrange
            var user = new User
            {
                id = 1,
                email = "test@example.com",
                hash = "hashedpassword",
                salt = "saltvalue",
                isparent = false,
                isteacher = true,
                name = "John"
            };

            // Act
            user.id = 0;
            user.email = null;
            user.hash = null;
            user.salt = null;
            user.isparent = true;
            user.isteacher = false;
            user.name = string.Empty;

            // Assert
            Assert.Multiple(() =>
            {
                Assert.That(user.id, Is.EqualTo(0));
                Assert.That(user.email, Is.Null);
                Assert.That(user.hash, Is.Null);
                Assert.That(user.salt, Is.Null);
                Assert.That(user.isparent, Is.True);
                Assert.That(user.isteacher, Is.False);
                Assert.That(user.name, Is.Null.Or.Empty);
            });
        }
    }
}