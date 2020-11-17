class ProductImage < ApplicationRecord
  belongs_to :image
  belongs_to :product
end
