require_relative './item'

class Label < Item
  def initialize(title, color)
    super(publish_date, archived)
    @title = title
    @color = color
    @item_list = []
  end
end
