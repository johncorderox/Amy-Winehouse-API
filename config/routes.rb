Rails.application.routes.draw do
  devise_for :users
  namespace :api, defaults: {format: :json} do
    namespace :v1 do
      resources :groups, only: [:index, :show] do
        resources :albums do
          resources :songs do
          end
        end
        resources :artists do
          resources :labels, only: [:index, :show] do
          end
        end
      end
    end
  end
end
