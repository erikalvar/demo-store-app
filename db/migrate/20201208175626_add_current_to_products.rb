class AddCurrentToProducts < ActiveRecord::Migration[6.0]
  def change
    add_column :products, :current, :boolean
  end
end
