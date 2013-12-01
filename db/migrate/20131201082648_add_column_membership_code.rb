class AddColumnMembershipCode < ActiveRecord::Migration
  def change
  	add_column :user_memberships, :membership_code, :string
  end
end
