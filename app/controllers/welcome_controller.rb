class WelcomeController < ApplicationController
	def index
		@event = Event.where(:front_page => true).first
	end

	def about
	end

	def running_links
	end

	def lvtc_membership
	end

	def contact
	end

	def champion_series_points_pdf
	end
end
