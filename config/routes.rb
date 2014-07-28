Rails.application.routes.draw do

  root to: "books#index"
  resources :books do
    resources :notes, only: [:create, :destroy]    
  end

  resources :sessions, only: [:create, :destroy, :new]

  get '/login' => "sessions#new", as: "login"
  delete '/logout' => "sessions#destroy", as: "logout"
end
