class Product < ApplicationRecord
  has_many :suppliers
  has_many :carted_products
  has_many :users, through: :carted_products
  has_many :orders, through: :carted_products
end
