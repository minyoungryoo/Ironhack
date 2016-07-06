Rails.application.routes.draw do
	get "/contacts/new", to: "contacts#new"

	post("/contacts", :to => "contacts#create")

	get "/contacts", to: "contacts#index"

	get "/contacts/:id", to: "contacts#info"

	get "/error", to: "contacts#error"
end
