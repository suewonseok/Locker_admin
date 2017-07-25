Rails.application.routes.draw do
  devise_for :users
  root "posts#index"
  resources :posts, except: [:show]
  resources :box, only: [:index, :new, :create, :destroy]
  resources :admin, only: [:index]
  resources :csv do
   collection { post :import }
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end