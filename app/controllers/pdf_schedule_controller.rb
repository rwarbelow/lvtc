class PdfScheduleController < ApplicationController
	class Schedule < Prawn::Document
		def to_pdf
			logo = "#{Rails.root}/app/assets/images/logo.png"
			image logo, :width => 150, :height => 75, :position => :center
			move_down 10
			font_size 28
			text "Las Vegas Track Club Schedule", :align => :center
			font_size 10
			text "(Printed #{Date.today.strftime('%m/%d/%Y')})", :align => :center
			move_down 15
			data = [["Date","Time","Event","Location","Grand Prix"]]
			all = []
			Event.future_events.each do |event|
				all << [event.date.strftime('%m/%d/%y'), event.time, event.event_title, event.location, ""]
			end
			all.each do |race|
				data += [ [race[0], race[1], race[2], race[3], race[4] ]]
			end
			font_size 10
			table(data, :header => true, :column_widths => [55, 55, 245, 120, 65], 
									:row_colors => ["E0E0E0", "FFFFFF"], 
									:cell_style => {:padding => [5, 5, 5, 5]}) do
				row(0).font_style = :bold
			end
			render
		end
	end

	def pdf
    output = Schedule.new.to_pdf
    respond_to do |format|
      format.pdf { 
        send_data output, type: "application/pdf", disposition: "inline"
      }
    end
  end
end
