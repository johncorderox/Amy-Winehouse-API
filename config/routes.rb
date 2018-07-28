Rails.application.routes.draw do
  namespace :api do
   namespace :v1 do
    resources :groups
    resources :artists
    end
  end
end
