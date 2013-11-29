class User < ActiveRecord::Base
	has_many :race_registrations
end
