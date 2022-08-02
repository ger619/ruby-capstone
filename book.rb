require 'date'
require_relative './item'

class Book < Item
  attr_accessor :publisher, :cover_state

  def initialize(publisher, cover_state)
    super(id = Random.rand(1..1000), publish_date = Date.today)
    @id = id
    @publish_date = publish_date
    @publisher = publisher
    @cover_state = cover_state
  end

  def can_be_archived?
    result = false
    result = true if super() || @cover_state == 'bad'
    result
  end
end
