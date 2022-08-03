require_relative './item'
require 'date'
require_relative './app'

class MusicAlbum < Item
  attr_accessor :on_spotify, :archived, :publish_date
  attr_reader :id

  def initialize(on_spotify, publish_date)
    super(id = Random.rand(1..1000))
    @id = id
    @on_spotify = true if on_spotify == 'y'
    @publish_date = publish_date
    @archived = can_be_archived?
  end

  private

  def can_be_archived?
    super || @on_spotify ? true : false
  end
end
