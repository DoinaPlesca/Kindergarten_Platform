create table children
(
    childid   serial
        primary key,
    firstname varchar(255),
    lastname  varchar(255),
    parentid  integer not null
        constraint fk_parentid
            references "user",
    image     text
);