class AddsColumnsToProducts < ActiveRecord::Migration[6.0]
  def change
    add_column :products, :year, :integer
    add_column :products, :model, :string
    add_column :products, :size, :string
    add_column :products, :new_used, :string
    add_column :products, :specs, :text
    add_column :products, :origin, :string
    add_column :products, :length, :integer
    add_column :products, :weigth, :integer
    add_column :products, :category, :string
    add_column :products, :sub_category, :text
  end
end
