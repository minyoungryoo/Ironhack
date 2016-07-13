Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  	get '/', to: 'site#home'

  	get '/contact', to: 'site#contact'

  	resources :projects, only: [:index, :show, :new, :create] do
  		resources :time_entries, except: [:show]
  	end
end



# resources: projects replaced:

# get '/projects', to: 'projects#index'
# get '/projects/new', to: "projects#new"
# get '/projects/:id', to: "projects#show"
# post '/projects', to: "projects#create"


# resources :projects do
# 	resources :time_entries
# end

# get '/projects/:project_id/time_entries', to: 'time_entries#index'
# get '/projects/:project_id/time_entries/new', to: 'time_entries#new'
# post '/projects/:project_id/time_entries', to: "time_entries#create", as: :project_time_entries
# get '/projects/:project_id/time_entries/:id/edit', to: 'time_entries#edit'
# patch '/projects/:project_id/time_entries/:id', to: 'time_entries#update', as: "project_time_entry"
# delete '/projects/:project_id/time_entries/:id', to: 'time_entries#destroy'
