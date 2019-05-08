class RemoveIsCustomerFromUser < ActiveRecord::Migration[5.2]
  def change
  	remove_column :users, :is_customer, :integer
  end
end
