class Item < ApplicationRecord
	has_and_belongs_to_many :carts
	has_and_belongs_to_many :orders
	validates :short_description, presence: true
	validates :long_description, presence: true
	validates :title, presence: true
	#validates :image_url, presence: true
	validates :price, presence: true
  validates :sku, uniqueness: true  
	has_one_attached :image_url
	monetize :price_cents
end
