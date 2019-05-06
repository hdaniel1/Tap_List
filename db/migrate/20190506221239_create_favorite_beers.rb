class CreateFavoriteBeers < ActiveRecord::Migration[5.2]
  def change
    create_table :favorite_beers do |t|
      t.integer :user_id
      t.integer :beer_id

      t.timestamps
    end
  end
end
