create table photo
(
    photoid     serial
        primary key,
    photourl    text not null,
    description text
);
