const express = require('express');
const app = express();
const Handlebars = require('handlebars');
const exphbs = require('express-handlebars');
const pgp = require('pg-promise')();
const bodyParser = require('body-parser');
const path = require('path');

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


app.get('/', (req, res) => {
  res.render('index');
})


app.get('/artists', (req, res) => {
  res.render('artists');
})

router.get('/api/artists', (req, res) => {
  res.send()
})

app.get('/artists/:artist_id', (req, res) => {
  res.render(':artist_id')
})

router.get('/api/artists/:artist_id', (req, res) => {
  res.send()
})


app.get('/albums', (req,res) => {
  res.render('albums');
})

router.get('/api/albums', (req, res) => {
  res.send()
})


app.get('/albums/:album_id', (req,res) => {
  res.render(':album_id');
})

router.get('/api/albums/:album_id', (req, res) => {
  res.send()
})

app.get('/playlists', (req,res) => {
  res.render('playlists');
})

router.get('/api/playlists', (req, res) => {
  res.send()
})

app.get('/playlists/:playlist_id', (req, res) => {
  res.render(':playlist_id');
})

router.get('/api/playlists/:playlist_id', (req, res) => {
  res.send()
})

app.get('/songs', (req,res) => {
  res.render('songs');
})

router.get('/api/songs', (req, res) => {
  res.send()
})

app.get('/songs/:song_id', (req, res) => {
  res.render(':song_id');
})

router.get('/api/songs/:song_id', (req, res) => {
  res.send()
})

const port = process.env.PORT || 5000;
app.listen(port);
