require_relative './app'
require_relative './music'

def list_music
  p @music_list
end

def create_music
  puts 'Please enter name of artist'
  artist = gets.chomp
  puts 'Please enter name of album'
  album = gets.chomp
  new_music = Music.new(artist, album)
  @music_list.push(new_music)
end
