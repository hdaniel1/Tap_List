class CreateBreweries < ActiveRecord::Migration[5.2]
  def change
    create_table :breweries do |t|
      t.string :name
      t.string :city
      t.string :state
      t.string :website
      t.text :description
      t.integer :established

      t.timestamps
    end
  end
end
