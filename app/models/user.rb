class User < ActiveRecord::Base
	has_secure_password
	has_many :race_registrations
	belongs_to :user_membership
	belongs_to :membership
	before_create :assign_username

	def assign_username
		self.username = "#{first_name.downcase}#{last_name.downcase}"
	end

end
