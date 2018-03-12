require 'httparty'
require 'json'

class IMDBService
  include HTTParty
  API_URL = "http://www.omdbapi.com/?apikey=#{Rails.application.secrets.omdb_api_key}&".freeze

  def search(string)
    response = self.class.get(API_URL + {'s' => string}.to_query)
    JSON.parse(response.body)
  end

  def get_movie(imdbID)
    response = self.class.get(API_URL + "i=#{imdbID}")
    JSON.parse(response.body)
  end
end
