require_relative './exit_app'

def choose_option
  choice = gets.chomp
  case choice
  when '1'
    app.display_books_music_albums_games
  when '2'
    app.display_movies
  when '3'
    app.display_genres
  when '5'
    app.display_labels
  when '6'
    app.display_authors_sources
  when '7'
    app.add_book_or_music_album_or_game
  else
    exit_app
  end
end
