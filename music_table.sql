/*Задание 2
Название и продолжительность самого длительного трека.*/
SELECT trackname, duration FROM track
where duration = (select max(duration) from track);

--Название треков, продолжительность которых не менее 3,5 минут.
SELECT trackname, duration FROM track
where duration >= 210;

--Названия сборников, вышедших в период с 2018 по 2020 год включительно. (для корректности с 1982 по 2007 сделал).
SELECT collectionname, release FROM collection
where  release between 1982 and 2007;

--Исполнители, чьё имя состоит из одного слова.
SELECT artistname FROM artist
WHERE artistname NOT LIKE '% %';

--Название треков, которые содержат слово «мой» или «my».
SELECT trackname FROM track
WHERE trackname ILIKE 'my %' or trackname ilike '% my %' or trackname ilike '% my' or trackname ilike 'my'

/*Задание 3
Количество исполнителей в каждом жанре.*/
SELECT genrename, COUNT(artistname) FROM genre g
JOIN artist_genre ag ON g.genre_id = ag.genre_id
JOIN artist a ON ag.artist_id = a.artist_id
GROUP BY genrename;

--Количество треков, вошедших в альбомы 2019–2020 годов (для корректности с 1982 по 2007 сделал).
SELECT albumname, COUNT(trackname) FROM album a
JOIN track t ON a.album_id = t.track_id
WHERE release BETWEEN 1982 AND 2007
GROUP BY albumname;

SELECT COUNT(trackname) FROM track t 
join album a ON t.album_id = a.album_id 
WHERE release BETWEEN 1982 and 2007; 

--Cредняя продолжительность треков по каждому альбому.
SELECT albumname, AVG(duration) FROM album a
JOIN track t ON a.album_id = t.album_id
GROUP BY albumname;

--Все исполнители, которые не выпустили альбомы в 2020 году. (для корректности в 2011 сделал).
SELECT artistname, release FROM artist ar
JOIN artist_album aa ON ar.artist_id = aa.album_id
JOIN album al ON aa.album_id = al.album_id
WHERE release != 2011

--Названия сборников, в которых присутствует конкретный исполнитель (выберите его сами).
SELECT c.collectionname FROM collection c
JOIN collection_track ct ON c.collection_id = ct.collection_id
JOIN track t ON ct.track_id = t.track_id
JOIN album al ON t.track_id = al.album_id
JOIN artist_album aa ON al.album_id = aa.album_id
JOIN artist ar ON aa.artist_id = ar.artist_id
WHERE ar.artistname = 'Beyonce'
