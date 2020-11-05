class Song < ApplicationRecord
  has_rich_text :description
  has_one_attached :image
  validates :title, presence: true,
                    length: { minimum: 5 }
  def previous
    Song.where(["id < ?", id]).last
  end

  def next
    Song.where(["id > ?", id]).first
  end

end
