class GroupChat < ApplicationRecord

  attachment :image

  belongs_to :user
  belongs_to :group


end
