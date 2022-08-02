require_relative './app'
require_relative './game'

def list_games
  p @game_list
end

def create_game
  print 'Multiplayer: Yes or No '
  multiplayer = gets.chomp
  print 'Last played at (year): '
  last_played_at = gets.chomp
  print 'Publish Year: '
  publish_date = gets.chomp
  print 'Game Added Succesfully'
  new_game = Game.new(multiplayer, last_played_at, publish_date)
  @game_list << new_game
end

def add_game(multiplayer, last_played_at, publish_date)
  new_game = Game.new(multiplayer, last_played_at, publish_date)
  @game_list << new_game
end
