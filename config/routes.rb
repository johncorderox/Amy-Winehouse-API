Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :groups
      resources :albums
      resources :artists
      resources :songs
      resources :lyrics
      resources :quotes
    end
  end
end
