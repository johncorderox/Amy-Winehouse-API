Rails.application.routes.draw do
  devise_for :users
  namespace :api do
    namespace :v1 do
      get "/" => "root#index"
      resources :artists, only: [:index, :show] do
        resources :quotes, only: [:index, :show]
        resources :albums do
        resources :record_labels, only: [:index]
          resources :songs, only: [:index, :show] do
          end
        end
      end
    end
  end
  root "home#index"
end
