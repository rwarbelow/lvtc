class Event < ActiveRecord::Base
	has_many :race_registrations
	default_scope { order('date') }
	after_save :set_price

	def self.future_events
		where('date >= ?', Date.today)
	end

	def self.past_events
		where('date < ?', Date.today).sort! { |a, b| b.date <=> a.date }
	end

	def formatted_price
	  sprintf("$%0.2f", self.price)
	end

	def set_price
		self.price = self.price * 100
	end

	def stripe_price
		price * 100
	end

end
