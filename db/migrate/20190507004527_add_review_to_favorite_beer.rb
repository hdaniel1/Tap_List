class AddReviewToFavoriteBeer < ActiveRecord::Migration[5.2]
  def change
    add_column :favorite_beers, :review, :text
  end
end
