require_relative './book_methods'

def read_book(file)
  puts ''
  puts '**********************BOOKS************************'
  puts ''
  file.each do |el|
    book_publisher = el['value']['publisher']
    book_cover_state = el['value']['cover_state']
    puts "Book Publisher: #{book_publisher} Book Cover State: #{book_cover_state}"
    add_book(book_publisher, book_cover_state)
  end
end
