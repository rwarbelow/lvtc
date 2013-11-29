class AddColumnAllowRegistrationToEvents < ActiveRecord::Migration
  def change
  	add_column :events, :allow_registration, :boolean
  end
end
