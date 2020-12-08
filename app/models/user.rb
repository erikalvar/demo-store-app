class User < ApplicationRecord
  has_many :carted_products
  has_many :products, through: :carted_products
  has_many :orders, through: :carted_products

  has_secure_password
  validates :email, presence: true, uniqueness: true
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :name, presence: true, length: { minimum: 4 }, uniqueness: true
end
