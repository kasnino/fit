class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :posts
  has_many :comments
  validates :name, presence: true
 
 has_many :passive_relationships, class_name: "Relationship",
                                  foreign_key: "follower_id", 
                                  dependent: :destroy

 has_many :followers, through: :passive_relationships, source: :follower



 has_many :active_relationships, class_name: "Relationship",
                                 foreign_key: "follower_id",
                                 dependent: :destroy

 has_many :followings, through: :active_relationships, source: :followed

 has_many :reverse_relationships, foreign_key: "followed_id", class_name: "Relationship", dependent: :destroy 



  # def follow(other_user)
  # 	active_relationships.create(followed_id: other_user.id)
  # end 

  # def following?(other_user)
  #   followings.include?(other_user.id)
  #   active_relationships.find_by(followed_id: other_user.id)
  # end
  # def unfollow(other_user )
  # 	active_relationships.find_by(followed_id: other_user.id).destroy
  # end                       

def following?(followed)
relationships.find_by_followed_id(followed)
end

def follow!(followed)
relationships.create!(:followed_id => followed.id)
end

def unfollow!(followed)
relationships.find_by_followed_id(followed).destroy
end


  mount_uploader :avatar, AvatarUploader
end

