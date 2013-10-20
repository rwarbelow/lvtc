class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
    	t.date :date, index: true
    	t.string :time
    	t.string :event_title
    	t.string :website
    	t.string :location
    	t.string :contact_name
    	t.string :comments
    	t.string :grand_prix_points
    	
      t.timestamps
    end
  end
end
