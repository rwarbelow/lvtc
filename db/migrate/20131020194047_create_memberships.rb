class CreateMemberships < ActiveRecord::Migration
  def change
    create_table :memberships do |t|
    	t.string :kind
    	t.integer :price
    	t.integer :duration
    	
      t.timestamps
    end
  end
end
