# For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

Rails.application.routes.draw do
  root to: "main#index"
  get "about", to: "about#index"

  get "sing_up", to: "registration#new"
  post "sing_up", to: "registration#create"

  get "sing_in", to: "session#new"
  post "sing_in", to: "session#create"

  get "password", to: "password#edit", as: :edit_password
  patch "password", to: "password#update"

  get "password/reset", to: "password_reset#new"
  get "password/reset", to: "password_reset#create"

  delete "logout", to: "session#destroy"

end
