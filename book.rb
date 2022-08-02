require_relative './item'
require 'date'

class Book < Item
  attr_accessor :publisher, :cover_state

  def initialize(publisher, cover_state)
    super(date)
    @publisher = publisher
    @cover_state = cover_state
  end

  def can_be_archived?
    res = false
    res = true if super() || @cover_state == 'bad'
    res
  end
end
