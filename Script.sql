CREATE TABLE IF NOT EXISTS Artist (
	id SERIAL PRIMARY KEY,
	name VARCHAR(80) NOT NULL,
	genre VARCHAR(40) NOT NULL
);

CREATE TABLE IF NOT EXISTS Genre (
	id SERIAL PRIMARY KEY,
	name VARCHAR(80) NOT NULL
);

create table if not exists Artist_genre (
	artist_id integer references Artist(id),
	genre_id integer references Genre(id),
	CONSTRAINT pk PRIMARY KEY (artist_id, genre_id)
);

create table if not exists Album (
	id serial primary key,
	name VARCHAR(80) NOT null,
	release integer not null,
	artist_id INTEGER NOT NULL REFERENCES Artist(id)
);

create table if not exists Artist_album (
	artist_id integer references Artist(id),
	album_id integer references Album(id),
	constraint pk2 primary key (artist_id, album_id)
);

create table if not exists Track (
	name VARCHAR(80) NOT NULL,
	duration integer NOT NULL,
	id integer primary key references Album(id)
);

create table if not exists Collection (
	name VARCHAR(80) NOT NULL,
	release integer NOT null,
	track_id INTEGER NOT NULL REFERENCES Track(id)
);