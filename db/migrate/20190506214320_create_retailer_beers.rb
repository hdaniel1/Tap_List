class CreateRetailerBeers < ActiveRecord::Migration[5.2]
  def change
    create_table :retailer_beers do |t|
      t.integer :beer_id
      t.integer :retailer_id
      t.integer :retailer_price
      t.string :glass_size
      t.integer :number_of_barrels

      t.timestamps
    end
  end
end
