class Item < ApplicationRecord

	validates :short_description, presence: true
	validates :long_description, presence: true
	validates :title, presence: true
	validates :image_url, presence: true
	validates :price, presence: true

end
