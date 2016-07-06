class ProjectsController < ApplicationController
	def index
		@projects_arr = Project.order(created_at: "desc")
								.limit(10)
		render 'index'

		# @projects = Project.last_created_projects
	end

	def show
		@my_project = Project.find(params[:id])

		if @my_project == nil
			render "no_projects_found"
		end
		
		render 'show'
	end
end

