Rails.application.routes.draw do
  resources :users, except: [:index]
  namespace :api, defaults: {format: :json} do
    namespace :v1 do
      resources :groups, only: [:index, :show] do
        resources :albums, only: [:index, :show] do
          resources :songs, only: [:index, :show] do
          end
        end
        resources :artists, only: [:index, :show] do
          resources :labels, only: [:index, :show] do
          end
        end
      end
    end
    resources :users, only: [:create]
    post "/login", to: "auth#create"
  end
end
