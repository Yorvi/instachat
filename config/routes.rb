Rails.application.routes.draw do
  root 'pages#home' do
    resources :posts, only: [:create, :destroy]  
  end

  devise_for :users
  resources 'users'
  
  resources :posts do
    resources :comments, only: [:create, :destroy]  
  end
end
