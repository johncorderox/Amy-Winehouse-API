Rails.application.routes.draw do
  root "home#index"
  resources :messages, only: [:index, :create, :destroy]
  devise_for :users
  namespace :api do
    namespace :v1 do
      get "/" => "root#index"
      resources :artists, only: [:index, :show] do
        resources :quotes, only: [:index, :show]
        resources :albums do
        resources :record_labels, only: [:index]
          resources :songs, only: [:index, :show, :destroy] do
          end
        end
      end
    end
  end
  match '*unmatched_route' => 'home#index', via: :all
end
