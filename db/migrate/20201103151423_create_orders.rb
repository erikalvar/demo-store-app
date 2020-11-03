class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.integer :cart_id
      t.integer :subtotal
      t.integer :tax
      t.integer :shipping
      t.integer :toatal

      t.timestamps
    end
  end
end
