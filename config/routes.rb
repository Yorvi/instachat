Rails.application.routes.draw do
  root 'posts#index' do
    resources :posts, only: [:new, :create, :destroy]  
  end

  devise_for :users
  resources 'users'
  
  resources :posts do
    resources :comments, only: [:create, :destroy]  
  end
end
