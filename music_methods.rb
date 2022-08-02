require_relative './app'
require_relative './MusicAlbum'

def list_music
  p @music_list
end

def create_music
  puts 'Is it on spotify?'
  artist = gets.chomp
  puts 'Can be archived?'
  album = gets.chomp
  new_music = MusicAlbum.new(artist, album)
  @music_list.push(new_music)
end

def add_music(on_spotify, publish_date)
  new_music = MusicAlbum.new(on_spotify, publish_date)
  @music_list.push(new_music)
end
