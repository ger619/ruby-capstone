require_relative './item'

class Game < Item
  attr_accessor :multiplayer, :last_played_at

  def initialize(multiplayer, last_played_at, publish_date, id: rand(1..10_000))
    super(publish_date, id: id)
    @id = id
    @multiplayer = multiplayer
    @last_played_at = last_played_at
  end

  def can_be_archived?
    difference = Time.now.year - @last_played_at
    super && difference > 2
  end
end
