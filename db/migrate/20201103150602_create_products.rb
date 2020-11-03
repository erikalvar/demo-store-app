class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :name
      t.integer :price
      t.text :description
      t.integer :units
      t.integer :supplier_id

      t.timestamps
    end
  end
end
