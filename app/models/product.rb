class Product < ActiveRecord::Base
has_many :line_items

	validates :name, :image_url, :price, presence: true
	validates :price, numericality: {greater_than_or_equal_to: 0.01}
	validates :name, uniqueness: true
end
