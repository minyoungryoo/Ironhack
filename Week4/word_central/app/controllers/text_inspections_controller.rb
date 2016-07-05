class TextInspectionsController < ApplicationController
  def new
    render "new"
  end

  # ***** New *****
  def create
  	@text = params[:text_inspection][:user_text]
  	@word_array = @text.split(" ")

  	@word_count = @word_array.length

  	@reading_time = @word_count/(275*60).to_f  #in sec

  	@word_frequency = frequency(@word_array)

    # render plain: @word_count
    render "results"
  end

  def frequency(array)
  	  hash = Hash.new(0)
	  array.each{|key| hash[key] += 1}
	  hash
  end

end
