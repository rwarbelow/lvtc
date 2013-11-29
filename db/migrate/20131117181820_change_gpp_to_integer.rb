class ChangeGppToInteger < ActiveRecord::Migration
  def change
		remove_column :events, :grand_prix_points
		add_column :events, :grand_prix_points, :integer
  end
end
