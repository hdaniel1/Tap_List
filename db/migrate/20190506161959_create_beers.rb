class CreateBeers < ActiveRecord::Migration[5.2]
  def change
    create_table :beers do |t|
      t.string :name
      t.string :style
      t.float :ABV
      t.integer :IBU
      t.string :description
      t.boolean :available
      t.float :price
      t.string :availability
      t.boolean :on_site_purchase
      t.integer :glass_size
      t.string :image
      t.integer :brewery_id
      
      t.timestamps
    end
  end
end
