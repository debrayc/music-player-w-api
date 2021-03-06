# MusicPlayerAPI
_______________________________________
## Music player app with accessible API endpoints.

Application is LIVE at: (https://musicplayerwapi.herokuapp.com/)

## Getting Started

## Installation

To install run command ```git clone https://github.com/debrayc/music-player-w-api.git```, run command ```npm install``` to install dependencies, and command ```node app.js``` to start server.

## Database Setup

To set up database, run command ```npm run seed```.



## Specifications
#### General
- [x] Artifact is a repo on GitHub.
- [x] Repo includes an Express.js app.
- [x] App provide a command to start the web server.
- [x] README includes “Getting Started” instructions.
- [x] “Getting Started” instructs how to install.
- [x] “Getting Started” instructs how to set up and configure the database.
- [x] “Getting Started” instructs how to start the server.
- [x] The artifact produced is properly licensed, preferably with the MIT license.

#### Database
- [x] App uses PostgreSQL for data persistence.
- [x] Database can store data about artists, albums, songs, and playlists.
- [x] Database uses multiple tables with appropriate foreign keys.
- [ ] Database uses join tables for any many-to-many relationships.
- [x] Artists have a name and genre.
- [x] Albums have a title, artist, and year.
- [x] Songs have a title, album, length (in seconds), and track number.
- [x] Playlists have a title and are associated with a list of songs.

#### API Specs
- [ ] API employs a RESTful design.
- [ ] API returns JSON-formatted data.
- [ ] API accepts POST and PUT/PATCH requests with JSON-formatted bodies.

#### API Users can:
- [x] Get all artists.
- [ ] Get an artist by id.
- [ ] Get an artist by name.
- [ ] Add a new artist.
- [ ] Edit an artist.
- [ ] Delete an artist.
- [x] Get all albums.
- [ ] Get an album by id.
- [ ] Get an album by title.
- [ ] Add a new album.
- [ ] Edit an album.
- [ ] Delete an album.
- [x] Get all songs.
- [x] Get a song by id.
- [ ] Get all songs in an album.
- [ ] Get all songs by an artist.
- [ ] Add a new song.
- [ ] Edit a song.
- [ ] Delete a song.
- [x] Get all playlists.
- [x] Get a playlist by id.
- [ ] Get all songs in a playlist.
- [ ] Add a song to a playlist.
- [ ] Create a playlist.
- [ ] Edit a playlist.
- [ ] Delete a playlist.

#### Deployment
- [x] App is deployed to Heroku.
- [x] Link to deployed app is added to README.
- [ ] Deployed app uses Heroku Postgres for persistence.
- [ ] Deployed app provides the same API functionality as local version.
