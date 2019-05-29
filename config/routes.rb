Rails.application.routes.draw do

    get 'secrets/new'
    get '/login' => 'sessions#new'
    post '/login' => 'sessions#create'
    post '/logout' => 'sessions#destroy'
    get '/secret' => 'secrets#show'

    root 'application#hello'

end
