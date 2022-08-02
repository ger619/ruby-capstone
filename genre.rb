require_relative './item'
require_relative './app'

class Genre < Item
  def initialize(id, name)
    super(Date.today, false)
    @id = id
    @name = name
    @items = []
  end

  def add_item(item)
    @items.push(item)
  end
end