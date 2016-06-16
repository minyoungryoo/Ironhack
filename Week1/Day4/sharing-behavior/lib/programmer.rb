# lib/programmer.rb

class Programmer 
	include CaffeineConsumer
	include Payable
  def program
  	receive_salary
    consume_caffeine
    do_wonderful_things_with_computers
  end

  def do_wonderful_things_with_computers
    puts "Coding wonderful things!"
  end
end
