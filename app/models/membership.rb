class Membership < ActiveRecord::Base

	def stripe_price
		price * 100
	end
	
end
