class ChangeStringToText < ActiveRecord::Migration
  def change
  	change_column :events, :description_1, :text, :limit => nil
  	change_column :events, :description_2, :text, :limit => nil
  	change_column :events, :description_3, :text, :limit => nil
  end
end
