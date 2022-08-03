require_relative './exit_app'
require_relative './book'
require_relative './MusicAlbum'
require_relative './Genre'

def display_menu(app)
  puts "\nWelcome to our Catalog!"
  puts "\nPlease choose a task by entering a number:"
  puts " 1 - For listing items\n 2 - For adding items\n 3 - Exit App"
  choice = gets.chomp
  case choice
  when '1'
    for_listing(app)
  when '2'
    for_adding(app)
  when '3'
    exit_app(app)
  else
    puts 'Invalid selection'
  end
end

def for_listing(app)
  puts "\nWelcome to our Catalog!"
  puts "\nPlease select a number for listing items"
  puts " 1 - List all books\n 2 - List all music albums\n 3 - List all games\n"
  puts " 4 - For next menu\n 5 - Exit App"
  choice = gets.chomp
  case choice
  when '1'
    app.book_display
  when '2'
    app.music_display
  when '3'
    app.game_display
  when '4'
    display_next(app)
  when '5'
    exit_app(app)
  else
    puts 'Invalid selection'
  end
end

def display_next(app)
  puts "\nWelcome to our Catalog!"
  puts "\nPlease select a number for listing items"
  puts " 1 - List all authors\n 2 - List all labels\n 3 - List all genres\n"
  puts " 4 - For previous menu\n 5 - Exit App"
  choice = gets.chomp
  case choice
  when '1'
    app.author_display
  when '2'
    app.label_display
  when '3'
    app.genre_display
  when '4'
    for_listing(app)
  when '5'
    exit_app(app)
  else
    puts 'Invalid selection'
  end
end

def for_adding(app)
  puts "\nWelcome to our Catalog!"
  puts "\nPlease select a number for adding items"
  puts " 1 - Add a book\n 2 - Add a music album\n 3 - Add a game\n 4 - Back to previous menu\n 5 - Exit App"
  choice = gets.chomp
  case choice
  when '1'
    app.book_create
  when '2'
    app.music_create
  when '3'
    app.game_create
  when '4'
    display_menu(app)
  when '5'
    exit_app(app)
  end
end
