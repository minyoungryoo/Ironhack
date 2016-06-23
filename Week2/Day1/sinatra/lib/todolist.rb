require_relative("../lib/storage.rb")
require "yaml/store"

class TodoList

	include StorageActions
    attr_reader :tasks, :user
    def initialize(user)
    	@todo_store = YAML::Store.new("public/tasks.yml")
        @tasks = []
        @user = user
    end

    def add_task(task)
    	@tasks = @tasks.push(task)
    end

    def delete_task(id)
    	@tasks.delete_if do |task|
    		task.id == id
    	end
    end

    def find_task_by_id(id)
    	taskid = @tasks.map do |task|
    		task.id
    	end
    	if taskid.include? id
    	@tasks.find {|task| task.id == id }
    	else
    		nil
    	end
    end
    

    def sort_by_created(str)
    	if str == "ASC"
    	sorted_tasks = @tasks.sort {|t1, t2| t1.created_at <=> t2.created_at}
   		elsif str == "DESC"
    	sorted_tasks = @tasks.sort {|t1, t2| t2.created_at <=> t1.created_at}
   		else
    	puts "invalid string"
    	end
    end

    def storage
    	# load_tasks
    	save
    end

    def load_tasks
        stored_task = YAML.load_file('public/tasks.yml')

        if stored_task
            @tasks = stored_task[@user]

            max_task = @tasks.max { |a,b| a.id <=> b.id }

            Task.set_current_id(max_task.id + 1)
            # @todo_store
            # @tasks = @todo_store.table
        end
    end

end




