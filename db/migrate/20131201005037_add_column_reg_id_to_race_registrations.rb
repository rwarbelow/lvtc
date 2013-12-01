class AddColumnRegIdToRaceRegistrations < ActiveRecord::Migration
  def change
  	add_column :race_registrations, :confirmation_code, :string
  end
end
