Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users, only: [:show, :index, :create, :update]
      resources :trips, only: [:show, :create]
    end
  end
end
