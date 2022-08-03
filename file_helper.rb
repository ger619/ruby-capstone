require_relative './book_methods'
require_relative './music_methods'
require_relative './game_methods'

def read_book(file)
  puts ''
  puts '*********************       BOOKS      *********************'
  puts ''
  file.each do |el|
    book_id = el['value']['id']
    book_archived = el['value']['archived']
    book_publisher = el['value']['publisher']
    book_cover_state = el['value']['cover_state']
    book_publish_date = el['value']['publish_date']
    puts "ID: #{book_id} Book Publisher: #{book_publisher} Book Cover State: #{book_cover_state} Published on: #{book_publish_date} Archived: #{book_archived}" # rubocop:disable Layout/LineLength
    add_book(book_publisher, book_cover_state, book_publish_date)
  end
end

def read_author(file)
  puts ''
  puts '*********************      AUTHORS     *********************'
  puts ''
  file.each do |el|
    author_first = el['value']['first_name']
    author_last = el['value']['last_name']
    puts "Author First Name: #{author_first} Author Last Name: #{author_last}"
  end
end

def read_music(file)
  puts ''
  puts '*********************   MUSIC ALBUMS   *********************'
  puts ''
  file.each do |el|
    music_id = el['value']['id']
    music_archived = el['value']['archived']
    music_on_spotify = el['value']['on_spotify']
    music_publish_date = el['value']['publish_date']
    puts "ID: #{music_id} On Spotify: #{music_on_spotify} Published on: #{music_publish_date}  Archived: #{music_archived}" # rubocop:disable Layout/LineLength
    add_music(music_on_spotify, music_publish_date)
  end
end

def read_label(file)
  puts ''
  puts '*********************      LABELS      *********************'
  puts ''
  file.each do |el|
    label_title = el['value']['title']
    label_color = el['value']['color']
    puts "Label Title: #{label_title} Label Color: #{label_color}"
  end
end

def read_game(file)
  puts ''
  puts '*********************       GAMES      *********************'
  puts ''
  file.each do |el|
    game_id = el['value']['id']
    game_archived = el['value']['archived']
    game_multiplayer = el['value']['multiplayer']
    game_last_played_at = el['value']['last_played_at']
    game_publish_date = el['value']['publish_date']
    puts "ID: #{game_id} Multiplayer: #{game_multiplayer} Last Played on: #{game_last_played_at} Published on: #{game_publish_date}  Archived: #{game_archived}" # rubocop:disable Layout/LineLength
    add_game(game_multiplayer, game_last_played_at, game_publish_date)
  end
end

def read_genre(file)
  puts ''
  puts '*********************      GENRES      *********************'
  puts ''
  file.each do |el|
    genre_name = el['value']['name']
    puts "Genre Name: #{genre_name}"
  end
end
