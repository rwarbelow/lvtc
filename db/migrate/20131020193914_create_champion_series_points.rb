class CreateChampionSeriesPoints < ActiveRecord::Migration
  def change
    create_table :champion_series_points do |t|
    	t.references :user, index: true
    	t.integer :points
    	t.references :event
    	
      t.timestamps
    end
  end
end
