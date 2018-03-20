class Movie < ApplicationRecord
  has_many :ratings
  has_many :list_movies
  has_many :lists, through: :list_movies
  after_create :add_imdb_data

  def add_imdb_data
    downcased_movie_hash = {}
    movie = IMDBService.new.get_movie(imdbID)
    movie.each_pair { |k,v| downcased_movie_hash.merge!({k.downcase => v}) }
    downcased_movie_hash.select! {|k,v| Movie.column_names.include?(k)}
    self.update_attributes(downcased_movie_hash)
  end
end
