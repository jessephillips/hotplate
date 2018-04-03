class Review < ApplicationRecord
  belongs_to :meal
  
  validates :description, :rating, :meal, presence: true
end
