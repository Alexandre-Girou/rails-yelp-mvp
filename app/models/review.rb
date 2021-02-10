class Review < ApplicationRecord
  belongs_to :restaurant
  validates :rating, :content, presence: true
  validates :rating, inclusion: { in: (0..5).to_a, message: "Not valid rating" }, numericality: { only_integer: true }
end
