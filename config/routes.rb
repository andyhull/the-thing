TheThing::Application.routes.draw do
  resources :things
  devise_for :users

  resources :users

  root to: "home#index"

  

end
