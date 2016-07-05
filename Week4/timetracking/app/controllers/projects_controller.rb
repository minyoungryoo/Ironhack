class ProjectsController < ApplicationController
	def index
		@projects_arr = Project.order(created_at: "desc")
								.limit(10)
		render 'index'
	end
end
