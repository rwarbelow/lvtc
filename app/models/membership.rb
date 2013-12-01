class Membership < ActiveRecord::Base
	has_many :user_memberships
	has_many :users, through: :user_memberships

	def stripe_price
		price * 100
	end

end
