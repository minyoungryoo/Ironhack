class ContactsController < ApplicationController
	def index
		@contacts_arr = Contact.order(name: "asc")

		render "index"
	end

	def new
		render "new"
	end

	def create
	    @contact = Contact.new(
      :name => params[:contact][:name],
      :address => params[:contact][:address],
      :phone_number => params[:contact][:phone_number],
      :email_address => params[:contact][:email_address])

	    # puts "---------------------"
	    # puts @contact.phone_number.to_s.length
	    # puts @contact.email_address[/[^@]+/][/[a-zA-Z]+/]
	    # puts "====================="

	    if @contact.name != "" && @contact.address != ""
	    @contact.save
		redirect_to("/contacts")
		elsif @contact.email_address[/[^@]+/][/[a-zA-Z]+/] == @contact.email_address[/[^@]+/]
	    	# && @contact.phone_number.to_s.length == 10
	    @contact.save
		redirect_to("/contacts")
		else
			redirect_to("/error")
		end

	end

	def info
		@id = params[:id]
		@contact = Contact.find_by(id: @id)
		render "info"
	end
end






