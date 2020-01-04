Rails.application.routes.draw do
  namespace :api do
    get "/cars" => "cars#index"
  end
end
