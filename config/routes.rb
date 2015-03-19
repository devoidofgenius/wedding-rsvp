Rails.application.routes.draw do
  
  resources :posts do
    resources :comments
  end
  
  root 'page#index'
  get 'signup'  => 'users#new'
  get    'login'   => 'sessions#new'
  post   'login'   => 'sessions#create'
  delete 'logout'  => 'sessions#destroy'
  resources :users
  resources :account_activations, only: [:edit]
  resources :password_resets,     only: [:new, :create, :edit, :update]
  
  get 'dashboard' => 'admin#index'
  get 'dashboard/users' => 'admin#users'
  get 'dashboard/posts' => 'admin#posts'
  get 'dashboard/rsvp' => 'admin#rsvp'
  get 'dashboard/comments' => 'admin#comments'

  get 'guests' => 'guests#index'
  post 'guests' => 'guests#create'



end
