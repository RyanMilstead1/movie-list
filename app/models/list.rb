class List < ApplicationRecord
  validates :title, presence: true

  belongs_to :user
  has_and_belongs_to_many :movies

  def avg_rating(user_id)
    ratings = []
    movies.each do |movie|
      potential_rating = movie.ratings.where(user_id: user_id)
      ratings << potential_rating[0].score unless potential_rating.empty?
    end
    (ratings.inject { |sum, el| sum + el }.to_f / ratings.size).round(2)
  end
end
