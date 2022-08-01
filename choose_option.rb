require_relative './exit_app'

def choose_option
  choice = gets.chomp
  case choice
  when '1'
    app.display_books
  when '2'
    app.display_music_albums
  when '3'
    app.display_movies
  when '4'
    app.display_genres
  when '5'
    app.display_labels
  when '6'
    app.display_authors
  when '7'
    app.display_sources
  when '8'
    app.add_book
  when '9'
    app.add_music_album
  when '10'
    app.add_game
  else
    exit_app
  end
end
