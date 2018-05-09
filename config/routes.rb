Rails.application.routes.draw do
  
  

  devise_for :users
   root 'home#index'
  
  resources :users, only: [:show, :edit, :update]

  resources :posts
  get 'posts/new'
  post 'posts' => 'posts#create'

  resources :posts do
  resources :comments
end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end