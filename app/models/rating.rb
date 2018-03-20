class Rating < ApplicationRecord
  validates :min_score, numericality: { greater_than: 0, less_than_or_equal_to: :max_score }
  validates :max_score, numericality: { less_than_or_equal_to: 10 }

  belongs_to :user
  belongs_to :movie
end
