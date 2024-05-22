create table calendarevents
(
    eventid          serial
        primary key,
    eventdate        date,
    eventdescription text,
    eventtitle       text
);
