class Event < ActiveRecord::Base
	default_scope { order('date') }

	def self.future_events
		where('date >= ?', Date.today)
	end

	def self.past_events
		where('date < ?', Date.today).sort! { |a, b| b.date <=> a.date }
	end

end
