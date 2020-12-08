class ChangesPricesToDecimalInOrders < ActiveRecord::Migration[6.0]
  def change
    change_column :orders, :subtotal, :decimal, :precision => 8, :scale => 2
    change_column :orders, :tax, :decimal, :precision => 8, :scale => 2
    change_column :orders, :shipping, :decimal, :precision => 8, :scale => 2
    change_column :orders, :total, :decimal, :precision => 8, :scale => 2
  end
end
