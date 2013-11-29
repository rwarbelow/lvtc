class AddMissingColumnsToEvents < ActiveRecord::Migration
  def change
    add_column :events, :price, :integer
    add_column :events, :description_1, :string
    add_column :events, :description_2, :string
    add_column :events, :description_3, :string
    rename_column :events, :event_title, :title
  end
end
