Rails.application.routes.draw do
  resources :songs
  resources :quotes
  resources :lyrics
  resources :labels
  resources :artists
  resources :albums
  resources :groups
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
