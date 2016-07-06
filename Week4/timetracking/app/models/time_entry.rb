class TimeEntry < ApplicationRecord
	belongs_to :project
end


# the_entry = TimeEntry.create(
# 	:hours => 1,
# 	:minutes => 45,
# 	:comment => "Did stuff",
# 	:date => Time.now,
# 	:project_id => 1)

# The id of the project to associate to