require_relative './exit_app'

def display_menu
  puts "\nWelcome to our Catalog!"
  puts "\nPlease choose an option by entering a number:"
  options = [
    '1 - For Books',
    '2 - For Music Albums',
    '3 - For Games',
    '4 - Exit'
  ]
  puts options
  choice = gets.chomp
  case choice
  when '1'
    display_books
  when '2'
    display_music_albums
  when '3'
    display_games
  when '4'
    exit_app
  end
end

def display_books
  puts 'Enter selected tasks:'
  options = [
    '1 - List all books',
    '2 - Add a book',
    '3 - Back to menu'
  ]
  puts options
  choice = gets.chomp
  case choice
  when '1'
    list_books
  when '2'
    add_book
  when '3'
    display_menu
  when '4'
    exit_app
  else
    puts 'Invalid option'
  end
end

def display_music_albums
  puts 'Enter selected tasks:'
  options = [
    '1 - List all music albums',
    '2 - Add a music album',
    '3 - Back to menu'
  ]
  puts options
  choice = gets.chomp
  case choice
  when '1'
    list_music_albums
  when '2'
    add_music_album
  when '3'
    display_menu
  when '4'
    exit_app
  else
    puts 'Invalid option'
  end
end

def display_games
  puts 'Enter selected tasks:'
  options = [
    '1 - List all games',
    '2 - Add a game',
    '3 - Back to menu'
  ]
  puts options
  choice = gets.chomp
  case choice
  when '1'
    list_games
  when '2'
    add_game
  when '3'
    display_menu
  when '4'
    exit_app
  else
    puts 'Invalid option'
  end
end
