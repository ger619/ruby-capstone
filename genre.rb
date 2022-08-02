require_relative './item'
require_relative './app'

class Genre < Item
  attr_accessor :id, :name, :items

  def initialize(name)
    super(id = Random.rand(1..1000), publish_date = Date.today)
    @id = id
    @publish_date = publish_date
    @name = name
    @items = []
  end

  def add_item(item)
    (item.is_a?(Item) && @items.include?(item)) || (@items << item)
    item.add_genre(self)
  end
end
