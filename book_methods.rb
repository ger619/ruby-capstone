require_relative './app'

def list_books
  @book_list.each_with_index do |book, index|
    puts "(#{index}) Publisher: \"#{book.publisher}\", Cover State: #{book.cover_state}"
  end
end

def create_book
  puts 'Please enter name of publisher'
  publisher = gets.chomp
  puts 'Please enter state of the cover'
  cover_state = gets.chomp
  new_book = Book.new(publisher, cover_state)
  @book_list.push(new_book)
end
