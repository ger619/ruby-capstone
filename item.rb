require 'date'

class Item
  attr_reader :id, :genre, :author, :label, :publish_date, :archived

  def initialize(id = Random.rand(1..1000), publish_date = Date.today)
    @id = id
    @genre = nil
    @author = nil
    @label = nil
    @publish_date = publish_date
    @archived = false
  end

  def add_label(label)
    label.is_a?(Label) && @label.nil? && (
      @label = label
      label.add_item(self)
    )
  end

  def add_genre(genre)
    genre.is_a?(Genre) && @genre.nil? && (
      @genre = genre
      genre.add_item(self)
    )
  end

  def add_author(author)
    author.is_a?(Author) && @author.nil? && (
      @author = author
      author.add_item(self)
    )
  end

  def move_to_archive
    @archived = true if can_be_archived?
  end

  private

  def can_be_archived?
    (Date.today - Date.parse(@publish_date)).to_i > 365 * 10
  end
end
