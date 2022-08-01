require_relative './item'
require_relative './app'

class MusicAlbum
  attr_accessor :on_spotify, :can_be_archived

  def initialize(on_spotify, can_be_archived)
    @on_spotify = on_spotify
    @can_be_archived = can_be_archived
  end
end
