#Completed through iteration four:

class ShoppingCart
attr_reader :items, :item
  def initialize
    @items = []
  end

   def add_item(item)
  	@items.push(item)
  end

  def checkout
  totalcount = @items.length
  total_price = 0
  	@items.each do |item|
  	total_price += item.price
  		end
  	if totalcount > 5
  		final_total_price = 0.9*(total_price)
  	else
  		final_total_price = total_price
  	end
  "Your total today is $#{final_total_price}. Have a nice day!"
  end

end

class Item 
attr_reader :name, :price
  def initialize(name, price)
      @name = name
      @price = price
  end

  def price
  	@price
  end

end

class Houseware < Item
	def price
		if @price > 100
			finalprice = 0.95*(@price)
		else
			finalprice = @price
		end
		finalprice
	end
end

class Fruit <Item

	def initialize(name, price, day)
		super(name, price)
		@day = day
	end

	def price
		if @day == "weekend"
			finalprice = 0.9*(@price)
		else
			finalprice = @price
		end
	end
end


 banana = Fruit.new("Banana", 10, "weekday")
 vaccuum = Houseware.new("Vaccuum", 150)
 oj = Item.new("Orange Juice", 10)
 rice = Item.new("Rice", 1)
 anchovies = Item.new("Anchovies", 2)

 joshs_cart = ShoppingCart.new
 joshs_cart.add_item(oj)
 joshs_cart.add_item(rice)
 # joshs_cart.add_item(oj)
 # joshs_cart.add_item(oj)
 # joshs_cart.add_item(oj)
 # joshs_cart.add_item(oj)   #Used to test for final iteration (discount)
 puts joshs_cart.checkout




