class CreateGrandPrixPoints < ActiveRecord::Migration
  def change
    create_table :grand_prix_points do |t|
    	t.references :user, index: true
    	t.integer :points
    	t.references :event

      t.timestamps
    end
  end
end
