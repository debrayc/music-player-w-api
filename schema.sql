DROP DATABASE IF EXISTS musicdatabase;
CREATE DATABASE musicdatabase;

\c musicdatabase

DROP TABLE IF EXISTS artists;
CREATE TABLE artists(
  artist_id SERIAL PRIMARY KEY,
  artist_name VARCHAR,
  genre VARCHAR
);

DROP TABLE IF EXISTS albums;
CREATE TABLE albums(
  album_id SERIAL PRIMARY KEY,
  album_name VARCHAR,
  artist_id VARCHAR,
  year VARCHAR
);

DROP TABLE IF EXISTS playlists;
CREATE TABLE playlists(
  playlist_id SERIAL PRIMARY KEY,
  playlist_name VARCHAR
);

DROP TABLE IF EXISTS songs;
CREATE TABLE songs(
  song_id SERIAL PRIMARY KEY,
  title VARCHAR,
  album_id VARCHAR,
  track_no VARCHAR,
  length VARCHAR
);

-- artists
insert into artists (artist_name, genre) values ('The Beatles', 'Pop, Rock');
insert into artists (artist_name, genre) values ('Elvis Presley', 'Rock and Roll');
insert into artists (artist_name, genre) values ('Michael Jackson', 'Pop, Rock, R&B');
insert into artists (artist_name, genre) values ('Madonna', 'Pop, Dance');
insert into artists (artist_name, genre) values ('Elton John', 'Pop, Rock');
insert into artists (artist_name, genre) values ('Led Zeppelin', 'Hard Rock, Blues, Folk Rock');
insert into artists (artist_name, genre) values ('Pink Floyd', 'Progressive Rock, Psychedelic Rock');
insert into artists (artist_name, genre) values ('AC/DC', 'Hard Rock, Blues Rock, Rock and Roll');
insert into artists (artist_name, genre) values ('Whitney Houston', 'R&B, Pop, Soul, Gospel');
insert into artists (artist_name, genre) values ('Meat Loaf', 'Hard Rock, Blues Rock, Rock and Roll');
insert into artists (artist_name, genre) values ('Eagles', 'Rock, Country Rock, Soft Rock');
insert into artists (artist_name, genre) values ('Bee Gees', 'Pop, Soul, Disco Rock, Soft Rock');
insert into artists (artist_name, genre) values ('Fleetwood Mac', 'Pop Rock, Soft Rock, Blues Rock, Art Pop, British Blues');
insert into artists (artist_name, genre) values ('Shania Twain', 'Country, Country Pop, Country Rock, Pop');
insert into artists (artist_name, genre) values ('Alanis Morissette', 'Alternative Rock, Post-Grunge, Pop Rock, Electronica, Dance-Pop');
insert into artists (artist_name, genre) values ('Mariah Carey', 'R&B, Pop, Hip Hop, Soul');
insert into artists (artist_name, genre) values ('Celine Dion', 'Pop, Chanson, Soft Rock, R&B');


--albums
insert into albums (album_name, artist_id, year) values ('Thriller', 3, 1982);
insert into albums (album_name, artist_id, year) values ('Thriller', 3, 1982);
insert into albums (album_name, artist_id, year) values ('Back in Black', 8, 1980);
insert into albums (album_name, artist_id, year) values ('The Dark Side of The Moon', 7, 1973);
insert into albums (album_name, artist_id, year) values ('The Bodyguard', 9, 1992);
insert into albums (album_name, artist_id, year) values ('Bat Out Of Hell', 10, 1977);
insert into albums (album_name, artist_id, year) values ('Their Greatest Hits (1971 - 1975)', 11, 1976);
insert into albums (album_name, artist_id, year) values ('Saturday Night Fever', 12, 1977);
insert into albums (album_name, artist_id, year) values ('Rumours', 13, 1977);
insert into albums (album_name, artist_id, year) values ('Come On Over', 14, 1997);
insert into albums (album_name, artist_id, year) values ('Led Zeppelin IV', 6, 1971);
insert into albums (album_name, artist_id, year) values ('Bad', 3, 1987);
insert into albums (album_name, artist_id, year) values ('Jagged Little Pill', 15, 1995);
insert into albums (album_name, artist_id, year) values ('Falling Into You', 17, 1996);
insert into albums (album_name, artist_id, year) values ('Sgt. Peppers Lonely Hearts Club Band', 1, 1967);
insert into albums (album_name, artist_id, year) values ('Hotel California', 11, 1976);
insert into albums (album_name, artist_id, year) values ('Music Box', 16, 1993);


-- songs
insert into songs (title, album_id, track_no, length) values ('Wanna Be Starting Something', 1, 1, 320);
insert into songs (title, album_id, track_no, length) values ('Baby Be Mine', 1, 2, 320);
insert into songs (title, album_id, track_no, length) values ('The Girl Is Mine', 1, 3, 320);
insert into songs (title, album_id, track_no, length) values ('The Girl Is Mine', 1, 3, 320);
insert into songs (title, album_id, track_no, length) values ('Thriller', 1, 4, 320);
insert into songs (title, album_id, track_no, length) values ('Beat It', 1, 5, 320);
insert into songs (title, album_id, track_no, length) values ('Billie Jean', 1, 6, 320);
insert into songs (title, album_id, track_no, length) values ('Human Nature', 1, 7, 320);
insert into songs (title, album_id, track_no, length) values ('PYT', 1, 8, 320);
insert into songs (title, album_id, track_no, length) values ('Lady in My Life', 1, 9, 320);
insert into songs (title, album_id, track_no, length) values ('Bad', 3, 1, 320);
insert into songs (title, album_id, track_no, length) values ('The Way You Make Me Feel', 3, 2, 320);
insert into songs (title, album_id, track_no, length) values ('Speed Demon', 3, 3, 320);
insert into songs (title, album_id, track_no, length) values ('Liberian Girl', 3, 4, 320);
insert into songs (title, album_id, track_no, length) values ('Just Good Friends', 3, 5, 320);
insert into songs (title, album_id, track_no, length) values ('Another Part of Me', 3, 6, 320);
insert into songs (title, album_id, track_no, length) values ('Man in the Mirror', 3, 7, 320);
insert into songs (title, album_id, track_no, length) values ('I Just Can''t Stop Loving You', 3, 8, 320);
insert into songs (title, album_id, track_no, length) values ('Dirty Diana', 3, 9, 320);
insert into songs (title, album_id, track_no, length) values ('Smooth Criminal', 3, 10, 320);
insert into songs (title, album_id, track_no, length) values ('Black Dog', 10, 1, 320);
insert into songs (title, album_id, track_no, length) values ('Rock and Roll', 10, 2, 320);
insert into songs (title, album_id, track_no, length) values ('The Battle of Evermore', 10, 3, 320);
insert into songs (title, album_id, track_no, length) values ('Stairway to Heaven', 10, 4, 320);
insert into songs (title, album_id, track_no, length) values ('Misty Mountain Hop', 10, 5, 320);
insert into songs (title, album_id, track_no, length) values ('Four Sticks', 10, 6, 320);
insert into songs (title, album_id, track_no, length) values ('Going to California', 10, 7, 320);
insert into songs (title, album_id, track_no, length) values ('When the Levee Breaks', 10, 8, 320);



--Playlists
insert into playlists (playlist_name) values ('tempus sit amet');
insert into playlists (playlist_name) values ('ipsum');
insert into playlists (playlist_name) values ('etiam');
insert into playlists (playlist_name) values ('iaculis');
insert into playlists (playlist_name) values ('sed sagittis');
insert into playlists (playlist_name) values ('praesent');
insert into playlists (playlist_name) values ('semper');
insert into playlists (playlist_name) values ('velit eu');
insert into playlists (playlist_name) values ('dui');
insert into playlists (playlist_name) values ('lacinia sapien quis');

-- --playlist_songs
-- insert into playlist_songs (playlist_id, song_id) values (10, 25);
-- insert into playlist_songs (playlist_id, song_id) values (5, 26);
-- insert into playlist_songs (playlist_id, song_id) values (5, 16);
-- insert into playlist_songs (playlist_id, song_id) values (4, 14);
-- insert into playlist_songs (playlist_id, song_id) values (3, 17);
-- insert into playlist_songs (playlist_id, song_id) values (6, 15);
-- insert into playlist_songs (playlist_id, song_id) values (4, 8);
-- insert into playlist_songs (playlist_id, song_id) values (3, 25);
-- insert into playlist_songs (playlist_id, song_id) values (3, 8);
-- insert into playlist_songs (playlist_id, song_id) values (8, 1);
-- insert into playlist_songs (playlist_id, song_id) values (3, 23);
-- insert into playlist_songs (playlist_id, song_id) values (5, 21);
-- insert into playlist_songs (playlist_id, song_id) values (5, 12);
-- insert into playlist_songs (playlist_id, song_id) values (9, 18);
-- insert into playlist_songs (playlist_id, song_id) values (2, 24);
-- insert into playlist_songs (playlist_id, song_id) values (9, 7);
-- insert into playlist_songs (playlist_id, song_id) values (9, 2);
-- insert into playlist_songs (playlist_id, song_id) values (5, 25);
-- insert into playlist_songs (playlist_id, song_id) values (9, 10);
-- insert into playlist_songs (playlist_id, song_id) values (2, 17);
-- insert into playlist_songs (playlist_id, song_id) values (6, 16);
-- insert into playlist_songs (playlist_id, song_id) values (10, 14);
-- insert into playlist_songs (playlist_id, song_id) values (2, 14);
-- insert into playlist_songs (playlist_id, song_id) values (8, 4);
-- insert into playlist_songs (playlist_id, song_id) values (3, 14);
