Rails.application.routes.draw do
  devise_for :users
  root 'posts#index'

  # resources method creates 7 default actions(index, show, new, create, edit, update, destroy)
  resources :posts do
    resources :comments, only: [:create] # nested to use posts id info in comments
  end

  resources :users, only: [:show] # creates show action only

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
