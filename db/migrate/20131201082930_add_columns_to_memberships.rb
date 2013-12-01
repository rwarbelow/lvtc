class AddColumnsToMemberships < ActiveRecord::Migration
  def change
  	add_column :memberships, :category, :string
  	add_column :user_memberships, :expiration_date, :date
  end
end
