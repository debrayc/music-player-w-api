const pgp = require('pg-promise')();
const connectionString = 'postgres://localhost:5432/musicdatabase';
const db = pgp(connectionString);

const getAllSongs = () => {
  return db.any(`SELECT * FROM songs`)
}

const addSong = () => {

}

const editSong = (song_id, title, artist, ) => {

}
