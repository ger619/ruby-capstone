require_relative './app'
require_relative './game'

def list_games
  @game_list.each_with_index do |game, index|
    puts "(#{index}) ID: #{game.id} Multiplayer: \"#{game.multiplayer}\", Last Played: #{game.last_played_at}, Published Year: #{game.publish_date}" # rubocop:disable Layout/LineLength
  end
end

def create_game
  print 'Multiplayer: Yes or No '
  multiplayer = gets.chomp
  print 'Last played at (year): '
  last_played_at = gets.chomp
  print 'Publish Year: '
  publish_year = gets.chomp
  print 'Game Added Succesfully'
  new_game = Game.new(multiplayer, last_played_at, publish_year)
  @game_list << new_game
end

def add_game(multiplayer, last_played_at, publish_year)
  new_game = Game.new(multiplayer, last_played_at, publish_year)
  @game_list << new_game
end
