class Review < ApplicationRecord
  RATING = (0..5)
  belongs_to :restaurant
  validates :content, presence: true
  validates :rating, presence: true, inclusion: { in: RATING, allow_nil: false }, numericality: { only_integer: true }
end
