class RenamesAttributesInProductImage < ActiveRecord::Migration[6.0]
  def change
    rename_column :product_images, :product_url, :product_id
    rename_column :product_images, :image_url, :image_id
  end
end
