Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "sessions#index"
  get "/login", to: "sessions#new"
  post "/login", to: "sessions#create"
  get "/secret", to: "secrets#show"
  get "/logout", to: "sessions#destroy"
end
