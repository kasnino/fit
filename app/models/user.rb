class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :posts
  has_many :comments
  validates :name, presence: true
 
 has_many :possive_relationchips, class_name: "Relationchip",
                                foreign_key: "followed_id",
                                dependent: :destroy

 has_many :follwers, through: :possive_relationchips, source: :follower


 has_many :active_relationchips, class_name: "Relationchip",
                               foreign_key: "follower_id",
                               dependent: :destroy

  has_many :follwing, through: :active_relationchips, source: :followed   


  def fullow(other_user)
  	active_relationchips.create(followed_id: other_user.id)
  end 

  def unfollow(other_user )
  	active_relationchips.find_by(followed_id: other_user.id).destroy
  end                       

  def following?(other_user)
  	following_ids.include?(other_user.id)
  end

  mount_uploader :avatar, AvatarUploader
end
