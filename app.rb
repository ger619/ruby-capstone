require_relative './book_methods'
require_relative './music_methods'
require_relative './game_methods'
require_relative './file_helper'
require 'json'

class App
  attr_accessor :book_list, :author_list, :music_list, :label_list, :game_list, :genre_list

  def initialize()
    @book_list = []
    @author_list = []
    @music_list = []
    @label_list = []
    @game_list = []
    @genre_list = []
  end

  def book_display
    list_books
  end

  def author_display
    list_authors
  end

  def music_display
    list_music
  end

  def label_display
    list_labels
  end

  def game_display
    list_games
  end

  def genre_display
    list_genres
  end

  def book_create
    create_book
  end

  def music_create
    create_music
  end

  def game_create
    create_game
  end

  def save_files
    instance_variables.each do |var|
      file_name = var.to_s.chomp('_list').delete('@')
      ary = []
      instance_variable_get(var).each do |obj|
        hash = { ref: obj, value: to_hash(obj) }
        ary << hash
      end
      File.write("./data/#{file_name}.json", JSON.generate(ary))
    end
  end

  def read_files
    instance_variables.each do |var|
      file_name = var.to_s.chomp('_list').delete('@')
      if File.exist?("./data/#{file_name}.json") && File.read("./data/#{file_name}.json") != ''
        ary = JSON.parse(File.read("./data/#{file_name}.json"))
        case file_name
        when 'book'
          read_book(ary)
        when 'music'
          read_music(ary)
        when 'game'
          read_game(ary)
        end
      else
        File.write("./data/#{file_name}.json", '[]')
      end
    end
  end

  def read_files2
    instance_variables.each do |var|
      file_name = var.to_s.chomp('_list').delete('@')
      if File.exist?("./data/#{file_name}.json") && File.read("./data/#{file_name}.json") != ''
        ary = JSON.parse(File.read("./data/#{file_name}.json"))
        case file_name
        when 'author'
          read_author(ary)
        when 'label'
          read_label(ary)
        when 'genre'
          read_genre(ary)
        end
      else
        File.write("./data/#{file_name}.json", '[]')
      end
    end
  end

  private

  def to_hash(obj)
    hash = {}
    obj.instance_variables.each do |var|
      hash[var.to_s.delete('@')] = obj.instance_variable_get(var)
    end
    hash
  end
end
