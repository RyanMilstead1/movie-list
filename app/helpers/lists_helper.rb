module ListsHelper
  def avg_rating(list)
    ratings = []
    list.movies.each do |movie|
      potential_rating = movie.ratings.where(user_id: current_user.id)
      ratings << potential_rating[0].score unless potential_rating.empty?
    end
    ratings.empty? ? 'No User Ratings' : (ratings.inject { |sum, el| sum + el }.to_f / ratings.size).round(2)
  end
end
