Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  post "api/v1/login" => "api/v1/sessions#login"
  post "api/v1/signin" => "api/v1/users#signin"
  get "api/v1/loggedin" => "api/v1/sessions#loggedin?"
 delete "api/v1/loggedout" => "api/v1/sessions#loggedout"
 post "api/v1/order" => "api/v1/orders#create"
 get "api/v1/:username/:restaurant/order" => "api/v1/orders#get"






 get "/api/v1/restaurants/:title/burgers" => "api/v1/burgers#index"
 post "/api/v1/restaurants/:title/burgers" => "api/v1/burgers#create"
  namespace :api do
    namespace :v1 do
      get "/restaurants" => "restaurants#index"
    end
  end
end
