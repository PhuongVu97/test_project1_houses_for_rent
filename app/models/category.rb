class Category < ApplicationRecord
  has_many :room_categories, dependent: :destroy
end
