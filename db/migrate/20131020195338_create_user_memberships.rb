class CreateUserMemberships < ActiveRecord::Migration
  def change
    create_table :user_memberships do |t|
    	t.references :membership
    	
      t.timestamps
    end
  end
end
