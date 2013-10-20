class CreateUserInvolvements < ActiveRecord::Migration
  def change
    create_table :user_involvements do |t|
    	t.references :user, index: true
    	t.references :club_involvements
    	t.string :comments
      t.timestamps
    end
  end
end
