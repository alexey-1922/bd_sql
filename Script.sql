CREATE TABLE IF NOT EXISTS Artist (
	artist_id SERIAL PRIMARY KEY,
	artistname VARCHAR(80) NOT NULL
);

CREATE TABLE IF NOT EXISTS Genre (
	genre_id SERIAL PRIMARY KEY,
	genrename VARCHAR(80) NOT NULL
);

create table if not exists Artist_genre (
	artist_id integer references Artist(artist_id),
	genre_id integer references Genre(genre_id),
	CONSTRAINT pk PRIMARY KEY (artist_id, genre_id)
);

create table if not exists Album (
	album_id serial primary key,
	albumname VARCHAR(80) NOT null,
	release integer not null
);

create table if not exists Artist_album (
	artist_id integer references Artist(artist_id),
	album_id integer references Album(album_id),
	constraint pk2 primary key (artist_id, album_id)
);

create table if not exists Track (
	track_id SERIAL PRIMARY KEY,
	trackname VARCHAR(80) NOT NULL,
	duration integer NOT NULL,
	album_id integer references Album(album_id)	
);

create table if not exists Collection (
	collection_id SERIAL PRIMARY KEY,
	collectionname VARCHAR(80) NOT NULL,
	release integer NOT null
);

create table if not exists Collection_track (
	track_id integer references Track(track_id),
	collection_id integer references Collection(collection_id),
	constraint pk3 primary key (track_id, collection_id)
);