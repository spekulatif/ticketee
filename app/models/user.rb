class User < ActiveRecord::Base
	has_secure_password
	has_many :projects
	has_many :tickets
	
	validates :email, presence: true

	
	def to_s
  	"#{email} (#{admin? ? "Admin" : "User"})"
	end
end
