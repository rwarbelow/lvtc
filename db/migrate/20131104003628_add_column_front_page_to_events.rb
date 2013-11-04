class AddColumnFrontPageToEvents < ActiveRecord::Migration
  def change
    add_column :events, :front_page, :boolean
    add_index :events, :date
    add_index :events, :front_page
    add_index :events, :grand_prix_points
  end
end
