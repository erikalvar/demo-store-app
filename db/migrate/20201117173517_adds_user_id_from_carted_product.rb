class AddsUserIdFromCartedProduct < ActiveRecord::Migration[6.0]
  def change
    add_column :carted_products, :user_id, :integer
  end
end
