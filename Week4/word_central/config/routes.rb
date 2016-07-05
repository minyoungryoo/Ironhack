Rails.application.routes.draw do
  root "site#home"

  get "/text_inspections/new", to: "text_inspections#new"

  # ***** New *****
  post "/text_inspections", to: "text_inspections#create"

  get "/asciis/new", to: "asciis#new"

  post "/asciis/process", to: "asciis#create"

  get "/lipsum/new", to: "lipsum#new"

  post "/lipsum/create", to: "lipsum#create"

end
