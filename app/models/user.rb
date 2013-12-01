class User < ActiveRecord::Base
	has_many :race_registrations
	belongs_to :user_membership
	belongs_to :membership

end
