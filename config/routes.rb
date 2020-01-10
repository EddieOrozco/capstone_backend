Rails.application.routes.draw do
  namespace :api do
    get "/cars" => "cars#index"
    get "/cars/:model" => "cars#show"
  end
end
