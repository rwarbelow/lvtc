class AddColumnChampionshipSeriesToEvents < ActiveRecord::Migration
  def change
    add_column :events, :championship_series_points, :integer
  end
end
