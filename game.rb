class Game 
    attr_accessor :multiplayer, :last_played_at
  
    def initialize(multiplayer, last_played_at, publish_date, id: rand(1..10_000))
      super(publish_date, id: id)
      @id = id
      @multiplayer = multiplayer
      @last_played_at = last_played_at
    end
end