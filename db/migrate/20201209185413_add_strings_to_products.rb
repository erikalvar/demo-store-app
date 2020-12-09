class AddStringsToProducts < ActiveRecord::Migration[6.0]
  def change
    add_column :products, :strings, :integer
  end
end
