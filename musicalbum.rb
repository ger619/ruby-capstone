require_relative './item'
require 'date'
require_relative './app'

class MusicAlbum < Item
  attr_accessor :on_spotify, :archived
  attr_reader :id, :publish_date

  def initialize(on_spotify)
    super(id = Random.rand(1..1000), publish_date = Date.today)
    @id = id
    @publish_date = publish_date
    @on_spotify = true if on_spotify == 'y'
    @archived = false
  end

  def can_be_archived?
    @on_spotify && (Date.today - Date.parse(@publish_date)).to_i > 365 * 10
  end
end
