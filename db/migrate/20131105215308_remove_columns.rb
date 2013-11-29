class RemoveColumns < ActiveRecord::Migration
  def change
  	remove_column :events, :championship_series_points
  end
end
