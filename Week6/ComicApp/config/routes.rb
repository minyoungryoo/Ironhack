Rails.application.routes.draw do
  devise_for :users, path: '', 
  path_names: {sign_in: "login", sign_up: "signup"}
  # controllers: {sessions: "sessions" }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  #profile page:
  get "/users/:id" => "users#show"
end
