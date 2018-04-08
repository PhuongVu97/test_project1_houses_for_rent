class Room < ApplicationRecord
  has_many :reviews, dependent: :destroy
  belongs_to :order
  has_many :room_categories, dependent: :destroy
end
