require_relative './app'
require_relative './musicalbum'

def list_music
  @music_list.each_with_index do |music, index|
    puts "(#{index}) ID: #{music.id} On Spotify: \"#{music.on_spotify}\", Publish Date: #{music.publish_date} Archived: #{music.archived}" # rubocop:disable Layout/LineLength
  end
end

def create_music
  puts 'Is it on spotify? [y/n]: '
  on_spotify = gets.chomp
  puts 'Please state when was the music published [yyyy/mm/dd]:'
  publish_date = gets.chomp
  new_music = MusicAlbum.new(on_spotify, publish_date)
  @music_list.push(new_music)
end

def add_music(on_spotify, publish_date)
  new_music = MusicAlbum.new(on_spotify, publish_date)
  @music_list << new_music
end

def list_labels
  if @label_list.empty?
    puts 'Label list is empty'
  else
  @label_list.each_with_index do |label, index|
    puts "(#{index}) Title: \"#{label.title}\", Color: #{label.color}"
  end
end
