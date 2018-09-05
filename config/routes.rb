Rails.application.routes.draw do
  root 'posts#index'
  devise_for :users
  resources :users # creates 7 default actions(index, show, new, create, edit, update, destroy)
  resources :posts # same as above

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
