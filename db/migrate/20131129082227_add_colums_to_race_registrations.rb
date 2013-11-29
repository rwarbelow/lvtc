class AddColumsToRaceRegistrations < ActiveRecord::Migration
  def change
  	add_column :race_registrations, :first_name, :string
  	add_column :race_registrations, :last_name, :string
  	add_column :race_registrations, :birthday, :date
  	add_column :race_registrations, :gender, :string
  	add_column :race_registrations, :distance, :string
  	add_column :race_registrations, :tshirt_size, :string
  	add_column :race_registrations, :email, :string
  	add_column :race_registrations, :phone, :string
  	add_column :race_registrations, :city, :string
  	add_column :race_registrations, :state, :string
  	add_column :race_registrations, :zip, :string
  	add_column :race_registrations, :waiver, :boolean
  end
end
