class WelcomeController < ApplicationController
	def index
		@announcement = Announcement.first
	end

	def about
	end

	def running_links
	end

	def join
	end

	def contact
	end

	def champion_series_points_pdf
	end
end
