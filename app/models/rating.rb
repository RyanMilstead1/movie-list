class Rating < ApplicationRecord
  validates :score, minimum: 1
  validates :score, maximum: 10

  belongs_to :user
  belongs_to :movie
end
