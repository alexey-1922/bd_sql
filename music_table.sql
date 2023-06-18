#Задание 2
#Название и продолжительность самого длительного трека.
SELECT name, duration FROM track
where duration = (select max(duration) from track);

#Название треков, продолжительность которых не менее 3,5 минут.
SELECT name, duration FROM track
where duration >= 3.5;

#Названия сборников, вышедших в период с 2018 по 2020 год включительно. (для корректности с 1982 по 2007 сделал).
SELECT name, release FROM collection
where  release between 1982 and 2007;

#Исполнители, чьё имя состоит из одного слова.
SELECT name FROM artist
WHERE name NOT LIKE '% %';

#Название треков, которые содержат слово «мой» или «my».
SELECT name FROM track
WHERE name LIKE '%My%' or name like '%мой%'

#Задание 3
#Количество исполнителей в каждом жанре.
SELECT genrename, COUNT(artistname) FROM genre g
JOIN artist_genre ag ON g.id = ag.genre_id
JOIN artist a ON ag.artist_id = a.id
GROUP BY genrename;

#Количество треков, вошедших в альбомы 2019–2020 годов (для корректности с 1982 по 2007 сделал).
SELECT albumname, COUNT(trackname) FROM album a
JOIN track t ON a.id = t.id
WHERE release BETWEEN 1982 AND 2007
GROUP BY albumname;

#Средняя продолжительность треков по каждому альбому.
SELECT albumname, AVG(duration) FROM album a
JOIN track t ON a.id = t.id
GROUP BY albumname;

#Все исполнители, которые не выпустили альбомы в 2020 году. (для корректности в 2011 сделал).
SELECT artistname, release FROM artist ar
JOIN artist_album aa ON ar.id = aa.album_id
JOIN album al ON aa.album_id = al.id
WHERE release != 2011

#Названия сборников, в которых присутствует конкретный исполнитель (выберите его сами).
SELECT c.collectionname FROM collection c
JOIN collection_track ct ON c.id = ct.collection_id
JOIN track t ON ct.track_id = t.id
JOIN album al ON t.id = al.id
JOIN artist_album aa ON al.id = aa.album_id
JOIN artist ar ON aa.artist_id = ar.id
WHERE ar.artistname = 'Beyonce'