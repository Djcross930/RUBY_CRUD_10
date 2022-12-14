Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "/products" => "products#index"
  get "/products/:id" => "products#show"

  get "/carted_products" => "carted_products#index"
  post "/carted_products" => "carted_products#create"

  post "/orders" => "orders#create"
end
