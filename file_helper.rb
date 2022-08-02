require_relative './book_methods'
require_relative './music_methods'

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

def read_music(file)
  puts ''
  puts '**********************MUSIC************************'
  puts ''
  file.each do |el|
    on_spotify = el['value']['on_spotify']
    publish_date = el['value']['publish_date']
    puts "On Spotify: #{on_spotify}  Publish Date: #{publish_date}"
    add_music(on_spotify, publish_date)
  end
end
