create table if not exists author (
	id serial primary key,
	author_name varchar(40) not null
);

create table if not exists genre (
	id serial primary key,
	genre_name varchar(30) not null
);

create table if not exists album (
	id serial primary key,
	album_name varchar(50) not null,
	release integer,
	id_author integer references author(id)
);

create table if not exists track (
	id serial primary key,
	track_name varchar(40) not null,
	track_time numeric(3, 1),
	id_album integer references album(id)
);

alter table author add column id_genre integer references genre(id);