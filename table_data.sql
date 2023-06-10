insert into artist values (1, 'Beyonce');
insert into artist values (2, 'Eminem');
insert into artist values (3, 'Metallika');
insert into artist values (4, 'Van Halen');


insert into genre values (1, 'POP');
insert into genre values (2, 'RAP');
insert into genre values (3, 'ROCK');

insert into artist_genre values (1, 1);
insert into artist_genre values (2, 2);
insert into artist_genre values (3, 3);
insert into artist_genre values (4, 3);

insert into album values (1, 'Dangerously in Love', 2007);
insert into album values (2, 'The Slim Shady LP', 2004);
insert into album values (3, 'Metallica', 2011);
insert into album values (4, 'Women and Children First', 1982);

insert into artist_album values (1, 1);
insert into artist_album values (2, 2);
insert into artist_album values (3, 3);
insert into artist_album values (4, 4);

insert into track values (1, 'Crazy in Love', 4, 1);
insert into track values (2, 'Naughty Girl', 3, 1);
insert into track values (3, 'My Name Is', 4, 2);
insert into track values (4, 'Brain Damage', 4, 2);
insert into track values (5, 'Sad but True', 5, 3);
insert into track values (6, 'The Unforgiven', 6, 3);
insert into track values (7, 'Loss of Control', 3, 4);
insert into track values (8, 'In a Simple Rhyme', 4, 4);

insert into collection  values (1, 'Irreemplazable', 2007);
insert into collection  values (2, 'The Singles', 2004);
insert into collection  values (3, 'Beyond Magnetic', 2011);
insert into collection  values (4, 'Diver Down', 1982);

insert into collection_track values (1, 1);
insert into collection_track values (2, 1);
insert into collection_track values (3, 2);
insert into collection_track values (4, 2);
insert into collection_track values (5, 3);
insert into collection_track values (6, 3);
insert into collection_track values (7, 4);
insert into collection_track values (8, 4);
