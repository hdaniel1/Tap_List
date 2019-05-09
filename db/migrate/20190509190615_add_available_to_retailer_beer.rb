class AddAvailableToRetailerBeer < ActiveRecord::Migration[5.2]
  def change
    add_column :retailer_beers, :available, :boolean
  end
end
