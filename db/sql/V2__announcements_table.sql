create table announcements
(
    id        serial
        primary key,
    sender    integer not null
        references "user",
    content   text,
    timestamp timestamp with time zone default CURRENT_TIMESTAMP,
    isread    boolean                  default false
);