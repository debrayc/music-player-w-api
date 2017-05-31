DROP DATABASE IF EXISTS musicdatabase;
CREATE DATABASE musicdatabase;

\c musicplayer

DROP TABLE IF EXISTS artists;
CREATE TABLE artists(
  artist_id SERIAL PRIMARY KEY,
  artist_name VARCHAR,
  artist_albums VARCHAR,
  artist_songs VARCHAR,
)

DROP TABLE IF EXISTS albums;
CREATE TABLE albums(
  album_id SERIAL PRIMARY KEY,
  album_name VARCHAR,
)

DROP TABLE IF EXISTS playlists;
CREATE TABLE playlists(
  playlist_id SERIAL PRIMARY KEY,
  playlist_name VARCHAR,
)

DROP TABLE IF EXISTS songs;
CREATE TABLE songs(
  song_id SERIAL PRIMARY KEY,

)
