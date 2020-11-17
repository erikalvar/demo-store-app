class RemovesCartIdFromCartedProduct < ActiveRecord::Migration[6.0]
  def change
    remove_column :carted_products, :cart_id, :intedger
  end
end
