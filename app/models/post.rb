class Post < ApplicationRecord
	#pertenece a
	belongs_to :user
	 #tiene mucho de
	 has_many :comments, dependent: :destroy
	 validates :title, presence: true,
	 length: { minimum: 5 }

	 default_scope { order('created_at DESC') }

	 mount_uploader :imagen, ImagenUploader
	 
	 has_many :taggings, dependent: :destroy
	 has_many :tags, through: :taggings
	 

	 def all_tags=(names)
	 	self.tags = names.split(",").map do |name|
	 		Tag.where(name: name).first_or_create!
	 		
	 	end
	 	
	 end

	 def self.tagged_with(name)
	 	Tag.find_by!(name: name).posts
	 end

	 def all_tags
	 	tags.map(&:name).join(", ")
	 end


	end
