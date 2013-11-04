class CreateAnnouncements < ActiveRecord::Migration
  def change
    create_table :announcements do |t|
    	t.string :title
			t.string :line_1
    	t.string :line_2
    	t.string :line_3
    	t.date :expiration_date

      t.timestamps
    end
  end
end
