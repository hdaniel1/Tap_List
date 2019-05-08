class RenameIsBreweryInUsersToUserType < ActiveRecord::Migration[5.2]
  def change
  	rename_column :users, :is_brewery, :user_type
  end 
end
