Rails.application.routes.draw do
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
      match '*unmatched_route' => 'root#index', via: %i[get]
    end
  end
  get "/data" => "home#data"
  root "home#index"
end
