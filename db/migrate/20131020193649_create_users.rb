class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
    	t.string :first_name
    	t.string :last_name, index: true
    	t.string :street_address_1
    	t.string :street_address_2
    	t.string :city, index: true
    	t.string :state
    	t.string :zip_code
    	t.string :gender
    	t.string :email_address
    	t.string :home_phone
    	t.string :cell_phone
    	t.string :work_phone
    	t.string :user_kind, index: true
    	t.references :user_membership

      t.timestamps
    end
  end
end
