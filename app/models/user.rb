class User < ActiveRecord::Base
	has_secure_password
	has_many :projects
	has_many :tickets
	has_many :permissions
	
	validates :email, presence: true

	
	def to_s
  	"#{email} (#{admin? ? "Admin" : "User"})"
	end
end
