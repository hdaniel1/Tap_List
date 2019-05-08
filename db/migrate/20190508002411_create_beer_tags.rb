class CreateBeerTags < ActiveRecord::Migration[5.2]
  def change
    create_table :beer_tags do |t|
      t.integer :beer_id
      t.integer :tag_id

      t.timestamps
    end
  end
end
