class User < ApplicationRecord
	validates :email, presence: true, uniqueness: true
	has_many :products
	# validates_associated :project
end
