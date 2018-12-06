class Category < ApplicationRecord
    validates :name, presence: true 
	has_many :has_categories
	has_many :posts
end
