Rails.application.routes.draw do
  resources :lists
  resources :ratings, :defaults => { :format => :json }, only: [:create, :show]
  post 'movie-search', to: 'movies#search'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'welcome#index'
end
