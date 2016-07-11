class User < ApplicationRecord
	validates :email, presence: true, uniqueness: true
	validates :name, presence: true
	has_many :products
	# validates_associated :project
	has_secure_password
	validates :password, presence: true
end
