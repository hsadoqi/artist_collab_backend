Rails.application.routes.draw do
  resources :friendships
  resources :friend_requests
  resources :users
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
