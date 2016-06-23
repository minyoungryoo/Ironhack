require_relative("../lib/task.rb")
require_relative("../lib/todolist.rb")
require_relative("../lib/storage.rb")

RSpec.describe Task do
	it "returns 1 for task ID" do
		task = Task.new("Buy the milk")
		expect(task.id).to eq(1)
	end

	it "returns 2 for task ID" do
		task2 = Task.new("Wash the car")
		expect(task2.id).to eq(2)
	end

	it "returns false for non-completed task" do
		task = Task.new("Buy the milk")
		expect(task.completed?).to eq(false)
	end

	it "returns false for non-completed task then true for now completed task" do
		task = Task.new("Buy the milk")
		expect(task.completed?).to eq(false)
		task.complete!
		expect(task.completed?).to eq(true)
	end

	it "returns false for un-completed task" do
		task = Task.new("Buy the milk")
		task.complete!
		expect(task.completed?).to eq(true)

		task.make_incomplete!
		expect(task.completed?).to eq(false)
	end

	it "checking contents" do
		task = Task.new("Buy the dog")
		expect(task.content).to eq("Buy the dog")

		task2 = Task.new("Walk the milk")
		expect(task2.content).to eq("Walk the milk")

		task.update_content!("Buy the milk")
		task2.update_content!("Walk the dog")

		expect(task.content).to eq("Buy the milk")
		expect(task2.content).to eq("Walk the dog")
	end
end

RSpec.describe TodoList do
	let(:task1) {Task.new("Buy the dog")}
	let(:task2) {Task.new("Buy the milk")}
	let(:task3) {Task.new("Walk the dog")}

	let(:new_list) {TodoList.new("John")}
	# let(:updated_list) {
	# 	new_list.add_task(task1)
	# 	new_list.add_task(task2)
	# }

	it "checking todo list" do
		new_list.add_task(task1)
		new_list.add_task(task2)
		new_list.to_s

		# new_list.delete_task(7)
		# puts new_list
	end

	it "delete task" do
		new_list.add_task(task1)
		new_list.add_task(task2)
		expect(new_list.tasks).to include(task2)
		old_length = new_list.tasks.length
		new_list.delete_task(task2.id)

		expect(new_list.tasks).not_to include(task2)
	end

	it "find by ID" do
		new_list.add_task(task1)
		new_list.add_task(task2)
		task = new_list.find_task_by_id(task1.id)
		expect(task.content).to eq(task1.content)
	end

	it "ordering" do
		new_list.add_task(task1)
		new_list.add_task(task2)
		sorted_list = new_list.sort_by_created("ASC")
		# [task1, task2]
	end

	it "storage function" do
		todo_list = TodoList.new("Josh")
		task = Task.new("Walk the dog")
		task2 = Task.new("Buy the milk")
		task3 = Task.new("Make my todo list into a web app")
		IO.write("../public/tasks.yml", "")
		todo_list.storage
		contents = IO.read("../public/tasks.yml")
		expect(contents).not_to eq("")

	end

		# todo_list = TodoList.new("Josh")
		# todo_list.load_tasks
		# puts todo_list.tasks.length
		# 3
	# end

	# it do
	# 	todo_list = TodoList.new("Josh")
	# 	puts todo_list.storage
	# 	# puts todo_list.tasks.length
	# end

end












