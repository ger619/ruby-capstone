require_relative './app'
require_relative './musicalbum'

def list_music
  @music_list.each_with_index do |music, index|
    puts "(#{index}) On Spotify: \"#{music.on_spotify}\", Publish Date: #{music.publish_date}"
  end
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
  @music_list << new_music
end

def list_labels
  @label_list.each_with_index do |label, index|
    puts "(#{index}) Title: \"#{label.title}\", Color: #{label.color}"
  end
end
