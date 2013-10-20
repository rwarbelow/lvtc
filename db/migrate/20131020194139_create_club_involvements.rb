class CreateClubInvolvements < ActiveRecord::Migration
  def change
    create_table :club_involvements do |t|
    	t.string :involvement
      t.timestamps
    end
  end
end
