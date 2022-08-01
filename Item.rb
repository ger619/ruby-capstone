class Item
  attr_writer :genre, :author, :source, :label

  def initialize(publish_date, archived)
    super()
    @id = Random.rand(1..1000)
    @publish_date = publish_date
    @archived = archived
  end
end
