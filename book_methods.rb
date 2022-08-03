require_relative './app'
require_relative './book'

def list_books
  @book_list.each_with_index do |book, index|
    puts "(#{index}) ID: #{book.id} Publish Date: #{book.publish_date} Publisher: \"#{book.publisher}\", Cover State: #{book.cover_state}, Archived: #{book.archived}" # rubocop:disable Layout/LineLength
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

def list_authors
  @authors_list.each_with_index do |author, index|
    puts "(#{index}) ID: #{author.id} Author First Name: \"#{author.first_name}\", Author Last Name: #{author.last_name}" # rubocop:disable Layout/LineLength
  end
end
