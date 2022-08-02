require_relative './book_methods'
require_relative './music_methods'

class App
  attr_accessor :book_list, :music_list

  def initialize()
    @book_list = []
    @music_list = []
  end

  def display_books
    list_books
  end

  def add_book
    create_book
  end

  def add_music
    create_music
  end

  def display_music
    list_music
  end
end
