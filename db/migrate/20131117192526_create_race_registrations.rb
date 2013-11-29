class CreateRaceRegistrations < ActiveRecord::Migration
  def change
    create_table :race_registrations do |t|
    	t.references :user
    	t.references :event

      t.timestamps
    end
  end
end
