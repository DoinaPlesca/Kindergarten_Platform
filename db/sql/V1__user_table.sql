create table "user"
(
    id        serial
        primary key,
    email     text,
    hash      text,
    salt      text,
    isparent  boolean default false,
    isteacher boolean default false,
    name      text
);