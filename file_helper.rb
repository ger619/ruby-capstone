require_relative './game_methods'
require_relative './book_methods'

def read_game(file)
  puts ''
  puts '**********************GAMES************************'
  puts ''
  file.each do |el|
    game_mode = el['value']['multiplayer']
    game_last_played_at = el['value']['last_played_at']
    game_publish_date = el['value']['publish_date']
    puts "Game Mode: #{game_mode} When Last Played: #{game_last_played_at} When Made: #{game_publish_date}"
    add_game(multiplayer, last_played_at, publish_date)
  end
end

def read_book(file)
  puts ''
  puts '**********************BOOKS************************'
  puts ''
  file.each do |el|
    book_publisher = el['value']['publisher']
    book_cover_state = el['value']['cover_state']
    puts "Book Publisher: #{book_publisher} Book Cover State: #{book_cover_state}"
    add_book(book_publisher, book_cover_state)
  end
end

def read_label(file)
  puts ''
  puts '**********************LABEL************************'
  puts ''
  file.each do |el|
    label_title = el['value']['title']
    label_color = el['value']['color']
    puts "Label Title: #{label_title} Label Color: #{label_color}"
  end
end
