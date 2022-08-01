require_relative './item'

class Book
  attr_accessor :publisher, :cover_state

  def initialize(publisher, cover_state)
    @publisher = publisher
    @cover_state = cover_state
    @book_list = []
  end

  def add_book(publisher, cover_state)
    new_book = Book.new(publisher, cover_state)
    @book_list.push(new_book)
  end
end
