require 'fileutils'

def create_dir
  Dir.exist?('./data') ? nil : create_files
end

def create_files
  Dir.mkdir('./data')
  FileUtils.touch('./data/book.json')
  FileUtils.touch('./data/author.json')
  FileUtils.touch('./data/music.json')
  FileUtils.touch('./data/label.json')
  FileUtils.touch('./data/game.json')
  FileUtils.touch('./data/genre.json')
end
