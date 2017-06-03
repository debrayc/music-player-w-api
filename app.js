const express = require('express');
const app = express();
const Handlebars = require('handlebars');
const exphbs = require('express-handlebars');
const pgp = require('pg-promise')();
const bodyParser = require('body-parser');
const path = require('path');

const db = require('./database/musicdatabase')
const router = express.Router()
// Models
const Artist = require('./models/artist')
const Album = require('./models/album')
const Playlist = require('./models/artist')
const Song = require('./models/song')


app.engine('handlebars', exphbs({ defaultLayout: 'main'}));
app.set('view engine', 'handlebars');
app.use(bodyParser.urlencoded());
app.use(express.static(path.join(__dirname, '/public')))
router.use( (req, res, next) => {

  console.log();
  next()
})
// Handlebars.registerHelper('artists', '{{{artists}}}')

app.get('/', (req, res) => {
  res.render('index');
})


app.get('/artists', (req, res) => {
  db.getAllArtists()
   .then( artists => {
    //  console.log(artists);
     res.render('artists', {artists})
   })
})

app.get('/api/artists', (req, res, next) => {
  db.getAllArtists()
  .then(artists => {
    res.send(artists)
  })
})

app.get('/artists/:artist_id', (req, res) => {
  db.getSong()
  res.render(':artist_id')
})

app.get('/api/artists/:artist_id', (req, res, next) => {
  db.getArtist(req.params.id)
  .then(artist => {
    res.send(artist)
  })
})

app.get('/albums', (req, res) => {
  db.getAllAlbums()
   .then( albums => {
     res.render('albums', {albums})
   })
 })

router.get('/api/albums', (req, res) => {
  res.send()
})


app.get('/albums/:album_id', (req,res) => {
  db.getAlbum(req.params.album_id)
  res.render(':album_id', {albums});
})

app.get('/api/albums/:album_id', (req, res, next) => {
  db.getAlbum(req.params.album_id)
  .then( album => {
    res.send(album)
  })
  .catch(next)
})

app.get('/playlists', (req, res) => {
  db.getAllPlaylists()
   .then( playlists => {
     res.render('playlists', {playlists})
   })
 })

app.get('/api/playlists', (req, res, next) => {
  db.getAllPlaylists()
  .then( playlists => {
    res.send(playlists)
  })
})

app.get('/playlists/:playlist_id', (req, res) => {
  db.getPlaylist(req.params.playlist_id)
  res.render(':playlist_id');
})

app.get('/api/playlists/:playlist_id', (req, res, next) => {
  db.getPlaylist(req.params.playlist_id)
  .then( playlists => {
    res.send(playlist);
  })
  .catch(next);
})

app.get('/songs', (req, res) => {
  db.getAllSongs()
   .then( songs => {
     res.render('songs', {songs})
   })
 })

app.get('/api/songs', (req, res, next) => {
  db.getAllSongs()
  .then(songs => {
    res.send(songs)
  })
})

app.get('/songs/:song_id', (req, res) => {
  res.render(':song_id');
})

app.get(`/api/songs/:song_id`, (req, res, next) => {
  db.getSong(req.params.song_id)
  .then(songs => {
    res.send(songs)
  })
  .catch(next)
})

const port = process.env.PORT || 5000;
app.listen(port);
