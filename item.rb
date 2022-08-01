class Item
  attr_writer :genre, :author, :source, :label

  def initialize(publish_date, archived)
    @id = Random.rand(1..1000)
    @publish_date = publish_date
    @archived = archived
  end

  def can_be_archived?
    return true if publish_date > 10
  end

  def move_to_archive
    @archived = true if can_be_archived?
  end
end
