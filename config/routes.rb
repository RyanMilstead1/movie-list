Rails.application.routes.draw do
  resources :lists
  post 'movie-search', to: 'movies#search'

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'welcome#index'
end
