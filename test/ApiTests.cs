using api;
using api.Events.Announcement.Clients;
using api.Events.Announcement.Server;
using api.Events.CalendarEvents.Client;
using api.Events.CalendarEvents.Server;
using api.Events.LogIn.Clients;
using api.Events.LogIn.Server;
using lib;
using NUnit.Framework;

namespace test;

[TestFixture]
[NonParallelizable]
public class ApiTests
{
    [SetUp]
    public async Task Setup()
    {
        Startup.Start(null);
    }
    
    [Test]
    [Repeat(5)]
    public async Task ClientEvents()
    {
        var ws = await new WebSocketTestClient().ConnectAsync();
        var ws2 = await new WebSocketTestClient().ConnectAsync();

        
        await ws.DoAndAssert(new ClientWantsToSignInDto() { email = "doina@yahoo.com", password = "password" },
            receivedMessages =>
            {
                return receivedMessages.Count(e => e.eventType == nameof(ServerAuthenticatesUser)) == 1;
               
            });
        
        
        
        await ws.DoAndAssert(new ClientWantsToCreateNewCalendarEvent() { eventdate = DateTime.Now, eventtitle = "title", eventdescription = "description"},
            receivedMessages =>
            {
                return receivedMessages.Count(x =>
                    x.eventType.Equals(nameof(ServerCreateCalendarEvent))) == 1;
            });
        
        await ws.DoAndAssert(new ClientWantsToGetEventsByDateRange() { StartDate = DateTime.Now, EndDate = DateTime.Now},
            receivedMessages =>
            {
                return receivedMessages.Count(x =>
                    x.eventType.Equals(nameof(ServerGetEventsByDateRange))) == 1;
            });
        await ws.DoAndAssert(new ClientWantsToPostAnnouncementDto() { content = "New Content"},
            receivedMessages =>
            {
                return receivedMessages.Count(x =>
                    x.eventType.Equals(nameof(ServerPostAnnouncement))) == 0;
            });
        
        ws.Client.Dispose();
        ws2.Client.Dispose();
    }
} 

    
    
