require_relative './item'
require_relative './app'

class Book
  attr_accessor :publisher, :cover_state

  def initialize(publisher, cover_state)
    @publisher = publisher
    @cover_state = cover_state
  end
end
