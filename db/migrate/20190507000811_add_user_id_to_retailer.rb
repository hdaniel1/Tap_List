class AddUserIdToRetailer < ActiveRecord::Migration[5.2]
  def change
    add_column :retailers, :user_id, :integer
  end
end
