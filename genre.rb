require_relative './item'
require_relative './app'

class Genre < Item
  attr_accessor :id, :name, :items

  def initialize(id, name)
    super(Date.today, false)
    @id = id
    @name = name
    @items = []
  end

  def add_item(item)
    (item.is_a?(Item) && @items.include?(item)) || (@items << item)
    item.add_genre(self)
  end
end
