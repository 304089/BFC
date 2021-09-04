class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  attachment :profile_image

  has_many :posts,dependent: :destroy
  has_many :post_commnets,dependent: :destroy
  has_many :favorites,dependent: :destroy



  has_many :relations,class_name: "Relation",foreign_key: "follower_id",dependent: :destroy
  has_many :followings,through: :relations,source: :followed

  has_many :reverse_of_relations,class_name: "Relation",foreign_key: "followed_id",dependent: :destroy
  has_many :followers,through: :reverse_of_relations,source: :follower
  
  
    



end
