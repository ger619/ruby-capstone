require_relative './app'

def list_books
  @book_list.each_with_index do |book, index|
    puts "(#{index}) Publisher: \"#{book.publisher}\", Cover State: #{book.cover_state}"
  end
end

def create_book
  puts 'Please enter name of book publisher:'
  publisher = gets.chomp
  puts 'Please enter book state cover:'
  cover_state = gets.chomp
  new_book = Book.new(publisher, cover_state)
  @book_list << new_book
end

def add_book(book_publisher, book_cover_state)
  new_book = Book.new(book_publisher, book_cover_state)
  @book_list << new_book
end

def list_labels
  @label_list.each_with_index do |label, index|
    puts "(#{index}) Title: \"#{label.title}\", Cover State: #{label.color}"
  end
end
