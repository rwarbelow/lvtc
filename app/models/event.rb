class Event < ActiveRecord::Base
	default_scope { order('date') }

	def self.future_events
		where('date >= ?', Date.today - 1)
	end
end
