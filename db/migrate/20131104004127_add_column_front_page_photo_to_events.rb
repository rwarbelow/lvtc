class AddColumnFrontPagePhotoToEvents < ActiveRecord::Migration
  def change
  	add_column :events, :front_page_photo_url, :string
  end
end
