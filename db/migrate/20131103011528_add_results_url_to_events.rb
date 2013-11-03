class AddResultsUrlToEvents < ActiveRecord::Migration
  def change
    add_column :events, :results_url, :string
  end
end
