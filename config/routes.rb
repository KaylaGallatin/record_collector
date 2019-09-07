# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
# For a list of available routes run "rake routes" in terminal
Rails.application.routes.draw do
  resources :albums
  devise_for :users
  resources :users, only: [:show]
  root to: 'home#index'
end
