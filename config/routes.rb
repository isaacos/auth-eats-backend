Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :restaurants, only: [:index]
      resources :users, only: [:index, :create, :update, :destroy]
      resources :reviews, only: [:create, :update, :destroy]
      resources :categories, only: [:index]
      resources :category_users, only: [:create, :update]
      post '/login', to: 'users#login'
    end
  end
end
