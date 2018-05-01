class Post < ApplicationRecord
	#pertenece a
	 belongs_to :user
	 #tiene mucho de
	 has_many :comments, dependent: :destroy
	 validates :title, presence: true,
                    length: { minimum: 5 }
end
