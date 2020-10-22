Rails.application.routes.draw do
  resources :users, except: [:index]
  namespace :api, defaults: {format: :json} do
    namespace :v1 do
      resources :groups, only: [:index, :show]
      resources :artists, only: [:index, :show]
      resources :albums, only: [:index, :show]
      resources :songs, only: [:index, :show]
    end
  end
  resources :users, only: [:create]
  post "/login", to: "auth#create"
end
