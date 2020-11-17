class CreateProductImages < ActiveRecord::Migration[6.0]
  def change
    create_table :product_images do |t|
      t.integer :product_url
      t.integer :image_url

      t.timestamps
    end
  end
end
