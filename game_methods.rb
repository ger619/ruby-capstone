require_relative './app'
require_relative './game'

def list_games
  if @game_list.empty?
    puts 'Game list is empty'
  else
    @game_list.each_with_index do |game, index|
      puts "(#{index}) ID: #{game.id} Multiplayer: \"#{game.multiplayer}\", Last Played: #{game.last_played_at}, Published Year: #{game.publish_date} Archived: #{game.archived}" # rubocop:disable Layout/LineLength
    end
  end
end

def create_game
  print 'Multiplayer [y/n]: '
  multiplayer = gets.chomp
  print 'Last played at [yyyy/mm/dd]: '
  last_played_at = gets.chomp
  puts 'Please state when was the game published [yyyy/mm/dd]:'
  publish_date = gets.chomp
  print 'Game Added Succesfully'
  new_game = Game.new(multiplayer, last_played_at, publish_date)
  @game_list << new_game
end

def add_game(multiplayer, last_played_at, publish_date)
  new_game = Game.new(multiplayer, last_played_at, publish_date)
  @game_list << new_game
end

def list_genres
  if @genre_list.empty?
    puts 'Genre list is empty'
  else
    @genre_list.each_with_index do |genre, index|
      puts "(#{index}) Genre Name: \"#{genre.name}\""
    end
  end
end
