class RemoveIsRetailerFromUser < ActiveRecord::Migration[5.2]
  def change
  	remove_column :users, :is_retailer, :integer
  end
end
