class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
	validates :email, presence: true, uniqueness: true
	validates :name, presence: true
	has_many :products
	# validates_associated :project
	has_secure_password
	validates :password, presence: true
	validates :name, presence: true
end
