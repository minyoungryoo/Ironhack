require "yaml/store"

module StorageActions

	def save
	  @todo_store.transaction do 
	      @todo_store[@user] = @tasks
	  end
	end

	# def load_tasks
	# 	todo_list = TodoList.new("Josh")
	# 	task = Task.new("Walk the dog")
	# 	task2 = Task.new("Buy the milk")
	# 	task3 = Task.new("Make my todo list into a web app")
	# 	todo_list.save
	# end

end