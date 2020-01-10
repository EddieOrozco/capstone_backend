Rails.application.routes.draw do
  namespace :api do
    get "/cars" => "cars#index"
    get "/cars/:id" => "cars#show"
  end
end
