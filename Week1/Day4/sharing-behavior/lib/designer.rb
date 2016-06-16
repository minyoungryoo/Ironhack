# lib/designer.rb

class Designer 
	include CaffeineConsumer
	include Payable
  def design_things
  	receive_salary
    consume_caffeine
    select_typography
    select_colors
  end

  def select_typography
    puts "Selecting Comic Sans"
  end

  def select_colors
    puts "Selecting black and white as the colors"
  end
end
