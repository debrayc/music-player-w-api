const express = require('express');
const app = express();
const Handlebars = require('handlebars');
const exphbs = require('express-handlebars');
const pgp = require('pg-promise')();
const bodyParser = require('body-parser');
const path = require('path');

app.engine('handlebars', exphbs({ defaultLayout: 'main'}));
app.set('view engine', 'handlebars');
app.use(bodyParser.urlencoded());
app.use(express.static(path.join(__dirname, '/public')))


app.get('/', (req, res) => {
  res.render('index');
})

app.get('/artists', (req, res) => {
  res.render('artists');
})

app.get('/artists/:artist_id', (req, res) => {
  res.render(':artist_id')
})

app.get('/albums', (req,res) => {
  res.render('albums');
})

app.get('/albums/:album_id', (req,res) => {
  res.render(':album_id');
})

app.get('/playlists', (req,res) => {
  res.render('playlists');
})

app.get('/playlists/:playlist_id', (req, res) => {
  res.render(':playlist_id');
})


const port = 3000;
app.listen(port);
