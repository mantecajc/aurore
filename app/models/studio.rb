class Studio < ApplicationRecord
  has_rich_text :main_description
  has_one_attached :image
end
