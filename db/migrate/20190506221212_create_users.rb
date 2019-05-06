class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.boolean :is_retailer
      t.boolean :is_brewery
      t.boolean :is_customer

      t.timestamps
    end
  end
end
