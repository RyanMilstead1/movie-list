class List < ApplicationRecord
  validates :title, presence: true

  belongs_to :user
  has_many :list_movies
  has_many :movies, through: :list_movies
end
