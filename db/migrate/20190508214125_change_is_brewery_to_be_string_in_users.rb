class ChangeIsBreweryToBeStringInUsers < ActiveRecord::Migration[5.2]
  def change
  	change_column :users, :is_brewery, :string
  end 
end
