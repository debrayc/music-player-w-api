class Playlist {
  constructor(title, songs) {
    this.title = title;
    this.songs = songs || [];
  }

  addPlaylist(title, songs){
    let array = []
    array.push(songs)
    let songs = array
    new Playlist(title, songs)
  }

  addSongToPlaylist(song){
    this.songs.push(song)
  }

  deleteSongFromPlaylist(song_id){
    let index = this.song_id.findIndex(song_id);
    this.songs.splice(index, 1);
  }
}
module.exports = Playlist
