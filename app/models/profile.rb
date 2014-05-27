class Profile < ActiveRecord::Base
  belongs_to :user
  has_many :songs
  attr_accessible :avatar, :background, :bio, :history , :file
  mount_uploader :file, AvatarUploader 

end