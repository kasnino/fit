Rails.application.routes.draw do
  
  

  devise_for :users
   root 'homes#show'
  
  resources :users, only: [:show, :edit, :update]

  resources :posts
  get 'posts/new'
  post 'posts' => 'posts#create'
  get 'tags/:tag', to: 'posts#index', as: "tag"

  resources :posts do
  resources :comments
end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
