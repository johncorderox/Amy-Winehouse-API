Rails.application.routes.draw do
  namespace :api, defaults: {format: :json} do
    namespace :v1 do
      resources :groups, only: [:index, :show]
      resources :artists, only: [:index, :show]
      resources :albums, only: [:index, :show]
      resources :songs, only: [:index, :show]
    end
  end
end
