require 'date'
require_relative './item'

class Game < Item
  attr_accessor :multiplayer, :last_played_at, :publish_year
  attr_reader :id, :publish_date

  def initialize(multiplayer, last_played_at, publish_year)
    super(id = Random.rand(1..1000), publish_date = Date.today)
    @id = id
    @publish_date = publish_date
    @multiplayer = multiplayer
    @last_played_at = last_played_at
    @publish_year = publish_year
  end

  def can_be_archived?
    difference = Time.now.year - @last_played_at
    super && difference > 2
  end
end
