class RatingsController < ApplicationController
  def create
    if Rating.exists?({:user_id => rating_params[:user_id], :movie_id => rating_params[:movie_id]})
      @rating = Rating.find_by_user_id_and_movie_id(rating_params[:user_id], rating_params[:movie_id])
      @rating.score = rating_params[:score]
    else
      @rating = Rating.new(rating_params)
    end

    head :ok
  end

  def rating_params
    params.require(:rating).permit(:score, :user_id, :movie_id)
  end
end
