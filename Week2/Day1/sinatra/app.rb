require "sinatra"
require "sinatra/reloader"

require_relative('lib/task.rb')
require_relative('lib/todolist.rb')
require_relative('lib/storage.rb')


todo_list = TodoList.new("Min")
todo_list.load_tasks

get "/tasks" do
	@list = todo_list.tasks
	erb(:task_index)
end

post "/new_task" do
	erb(:new_task)
end

post "/create_task" do
	@new_task = params[:new_task]
	todo_list.add_task(Task.new(@new_task))
	todo_list.storage
	redirect to('/tasks')
end

post "/complete_task" do
	@id = params[:id].to_i
	task_trash = todo_list.find_task_by_id(@id)
	todo_list.delete_task(task_trash.id)
	todo_list.storage
	redirect to('/tasks')
end




