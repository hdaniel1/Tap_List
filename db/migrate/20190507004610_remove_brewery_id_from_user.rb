class RemoveBreweryIdFromUser < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :brewery_id, :integer
  end
end
