const pgp = require('pg-promise')();
const connectionString = 'postgres://localhost:5432/musicdatabase';
const db = pgp(connectionString);
// Songs
const getAllSongs = () => {
  return db.any(`SELECT * FROM songs`)
}

const deleteSong = (song_id) => {
  return db.none(`DELETE FROM songs WHERE song_id=${song_id}`)
}

const addSong = (title, artist, length, track_number){
  return db.none(`INSERT INTO songs (title, artist, length, track_number) VALUES (${title}, ${artist}, ${length}, ${track_number})`);
}

const updateSong = (song_id, title, artist, length, track_number) => {
  return db.none(`UPDATE songs SET title=${title}, artist=${artist}, length=${length}, track_number=${track_number}`);
}
// playlists
const getAllPlaylists = () => {
  return db.none(`SELECT * FROM playlists`);
}

const updatePlaylist = (playlist_id, title, songs) => {
  return db.none(`UPDATE (title, songs) VALUES (title=${title}, songs=${songs})`)
}
const deletePlaylist = (id) => {
  return db.none(`DELETE FROM playlist WHERE id=${id}`)
}
// artists
const getAllArtists = () => {
  return db.none(`SELECT * FROM artists`)
}

const addArtist = (name, genre) => {
  return db.none(`INSERT INTO artists (name, genre) VALUES (name=${name}, genre=${genre})`)
}

const updateArtist = (artist_id, name, genre) => {
  return db.none(`UPDATE artists (name, genre) VALUES (name=${name}, genre=${genre}) WHERE id=${id}`)
}

const deleteArtist = (artist_id) => {
  return db.none(`DELETE FROM artists WHERE artist_id=${artist_id}`)
}
// Albums
const getAllAlbums = () => {
  return db.none(`SELECT * FROM albums`)
}

const addAlbum = (title, artist, year) => {
  return db.none(`INSERT INTO albums (title, artist, year) VALUES (title=${title}, artist=${artist}, year=${year})`)
}

const updateAlbum = (album_id, title, artist, year) => {
  return db.none(`UPDATE albums (title, artist, year) VALUES (title=${title}, artist=${artist}, year=${year}) WHERE album_id=${album_id}`)
}

const deleteAlbum = album_id => {
  return db.none(`DELETE FROM albums WHERE album_id=${album_id}`)
}
module.exports = {
  getAllPlaylists,
  getAllSongs,
  getAllAlbums,
  getAllArtists,
  addPlaylist,
  addSong,
  addAlbum,
  addArtist,
  updatePlaylist,
  updateSong,
  updateAlbum,
  updateArtist,
  deletePlaylist,
  deleteSong,
  deleteAlbum,
  deletePlaylist
}
