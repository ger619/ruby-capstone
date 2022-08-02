require_relative './item'
require_relative './app'
require 'date'

class MusicAlbum < Item
  attr_accessor :on_spotify, :archived

  def initialize(on_spotify, publish_date)
    @on_spotify = true if on_spotify == 'y'
    @publish_date = Date.today
    @archived = false
  end

  def can_be_archived?
    @on_spotify && (Date.today - Date.parse(@publish_date)).to_i > 365 * 10
  end
end
