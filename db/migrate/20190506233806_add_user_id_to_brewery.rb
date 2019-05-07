class AddUserIdToBrewery < ActiveRecord::Migration[5.2]
  def change
    add_column :breweries, :user_id, :integer
  end
end
