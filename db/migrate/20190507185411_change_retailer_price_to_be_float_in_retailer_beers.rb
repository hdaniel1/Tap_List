class ChangeRetailerPriceToBeFloatInRetailerBeers < ActiveRecord::Migration[5.2]
  def change
  	change_column :retailer_beers, :retailer_price, :float
  end
end
