class Post < ApplicationRecord

  belongs_to :user
  has_many :post_comments,dependent: :destroy
  has_many :favorites,dependent: :destroy


  attachment :post_image

end
