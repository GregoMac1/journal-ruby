Rails.application.routes.draw do
  root "posts#index"

  resources :posts
  
  resources :users

  get "attend", to: "attend#index"
  post "attend/:id", to: "attend#attend", as: "attend_turn"
  
  get "sign_up", to: "registrations#new"
  post "sign_up", to: "registrations#create"
  get "sign_in", to: "sessions#new"
  post "sign_in", to: "sessions#create", as: "log_in"
  get "logout", to: "sessions#destroy"

  get "password", to: "passwords#edit", as: "edit_password"
  patch "password", to: "passwords#update"

  get "profile", to: "home#profile"
end
