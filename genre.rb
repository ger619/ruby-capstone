require_relative './item'
require_relative './app'

class Genre
  def initialize(id, name, _items)
    @id = id
    @name = name
    @items = []
  end

  def add_item(item)
    @items.push(item)
  end
end
