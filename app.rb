require_relative './book_methods'

class App
  attr_accessor :book_list

  def initialize()
    @book_list = []
  end

  def display_books
    list_books
  end

  def add_book
    create_book
  end
end
