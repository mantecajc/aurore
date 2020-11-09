class SoundDesign < ApplicationRecord
  has_rich_text :description
  has_one_attached :image
  validates :title, presence: true,
                    length: { minimum: 2 }

  def previous
    SoundDesign.where(['id < ?', id]).last
  end

  def next
    SoundDesign.where(['id > ?', id]).first
  end

  has_many :vimeos, dependent: :destroy

  accepts_nested_attributes_for :vimeos, reject_if: :all_blank, allow_destroy: true
end
