class User < ActiveRecord::Base
	has_many :race_registrations
	belongs_to :user_membership
end
