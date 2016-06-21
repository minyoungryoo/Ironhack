require("artii")
require "sinatra"





get "/ascii/:word/?:font?/?:secret?" do
# puts asciifier.asciify("Blah")
	@word = params[:word]
	@font = params[:font]
	@secret = params[:secret]
	if @font == nil
	@font = "doh"
    end

	if (@word == "tortoise") && (@font == "special") && (@secret == "secret")
		erb(:animal_page)
	else
		@asciifier = Artii::Base.new(:font => @font)
		erb(:art_page)
	end
end


