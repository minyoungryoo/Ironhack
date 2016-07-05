class AsciisController < ApplicationController
	def new
		render 'new'
	end

	def create
		@text = params[:asciis_text][:user_text]
		@asciifier = Artii::Base.new(:font => "alligator")
		render 'results'
	end
end
