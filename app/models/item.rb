class Item < ApplicationRecord
	has_and_belongs_to_many :carts
	validates :short_description, presence: true
	validates :long_description, presence: true
	validates :title, presence: true
	validates :image_url, presence: true
	validates :price, presence: true

	monetize :price_cents
end
