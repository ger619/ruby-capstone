require_relative './app'
require_relative './book'

def list_books
  if @book_list.empty?
    puts 'Book list is empty'
  else
    @book_list.each_with_index do |book, index|
      puts "(#{index}) ID: #{book.id} Publisher: \"#{book.publisher}\", Cover State: \"#{book.cover_state}\" Publish Date: #{book.publish_date} Archived: #{book.archived}" # rubocop:disable Layout/LineLength
    end
  end
end

def create_book
  puts 'Please enter name of book publisher: '
  publisher = gets.chomp.capitalize
  puts 'Please enter book state cover [good/bad]:'
  cover_state = gets.chomp
  puts 'Please state when was the book published [yyyy/mm/dd]:'
  publish_date = gets.chomp
  print 'Book Added Succesfully'
  new_book = Book.new(publisher, cover_state, publish_date)
  @book_list << new_book
end

def add_book(book_publisher, book_cover_state, book_publish_date)
  new_book = Book.new(book_publisher, book_cover_state, book_publish_date)
  @book_list << new_book
end

def list_authors
  if @author_list.empty?
    puts 'Author list is empty'
  else
    @author_list.each_with_index do |author, index|
      puts "(#{index}) ID: #{author.id} Author First Name: \"#{author.first_name}\", Author Last Name: \"#{author.last_name}\"" # rubocop:disable Layout/LineLength
    end
  end
end
