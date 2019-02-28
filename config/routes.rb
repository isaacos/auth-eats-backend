Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :restaurants
      resources :users
      resources :reviews
      resources :categories
      resources :category_users
      post '/login', to: 'users#login'
    end
  end
end
