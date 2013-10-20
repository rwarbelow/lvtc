class CreateUserEvents < ActiveRecord::Migration
  def change
    create_table :user_events do |t|
    	t.references :user, index: true
    	t.references :event
    	
      t.timestamps
    end
  end
end
