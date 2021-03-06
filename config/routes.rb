Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    get '/products' => 'products#index'
    get '/products/:id' =>  'products#show'
    post 'products/' => 'products#create'
    #create a new product 


    patch '/products/:id' => 'products#update'
    # delete '/products/id' => "products#destroy"

    #sign up 
    post "/users" => "users#create"

   #session when you log in/generate a token
    post "/sessions" => "sessions#create"

    post '/orders' => 'orders#create'
    #creating a new order 


    get '/orders' => 'orders#index'
    get '/orders/:id' => 'orders#show'

   

    post '/carted_products' => 'carted_products#create'
    get '/carted_products' => 'carted_products#index'
    delete '/carted_products/:id' => 'carted_products#destroy'

  end
end