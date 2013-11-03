class CreateNewsletters < ActiveRecord::Migration
  def change
    create_table :newsletters do |t|
    	t.string :month
    	t.string :year
    	t.string :url
      t.timestamps
    end
  end
end
