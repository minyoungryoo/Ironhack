class Project < ApplicationRecord
	has_many :time_entries

	validates :name, presence: true, uniqueness: true, length: { maximum: 30 }, format: { with: /\[a-zA-Z]/}

	def self.clean_old
		#find projects older than a week then destroy them
		Project.where("created_at < ?", 1.week.ago).destroy_all
	end
end

#in the console try: Project.clean_old




