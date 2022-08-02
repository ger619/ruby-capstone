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
