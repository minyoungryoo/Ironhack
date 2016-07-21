Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/', to: 'site#home'

  	get '/users/new', to: 'user#new'

    get '/users', to: 'user#index'

    get '/users/login', to: 'user#login'

    post '/users/login', to: 'user#login_verify'
 
    get '/users/:user_id', to: 'user#show'

    post '/users', to: 'user#create'

    get '/users/:user_id/products/:product_id/my_page', to: 'user#my_page'

    get '/users/:user_id/products/:product_id/my_page/delete', to: 'product#destroy'


  	get '/users/:user_id/products/new', to: 'product#new'

  	get '/users/:user_id/products', to: "product#index", as: "products"

  	get '/users/:user_id/products/:id', to: "product#show"

  	post '/users/:user_id/products', to: "product#create"

  	# post '/product/bid/:product_id', to: "bid#create", as: "product_bids"

  	get '/users/:user_id/products/:product_id/bids/new', to: "bid#new"

  	post "/users/:user_id/products/:product_id/bid", to: "bid#create", as: "product_bids"

    get '/users/:user_id/products/:product_id/bid/:bid_id', to: "bid#show"

  	# resources :products do
  	# 	resources :bids
  	# end

end
