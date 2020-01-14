Rails.application.routes.draw do
  namespace :api do
    get "/users" => "users#index"
    post "/users" => "users#create"
    get "/users/:id" => "users#show"
    delete "/users/:id" => "users#destroy"

    post "/sessions" => "sessions#create"

    get "/cars" => "cars#index"
    post "/cars" => "cars#create"
    get "/cars/:id" => "cars#show"
    patch "/cars/:id" => "cars#update"
    delete "/cars/:id" => "cars#destroy"

    post "/messages" => "messages#create"
  end
end
