class Album < ActiveRecord::Base
  belongs_to :user
  has_many :songs
  attr_accessible :artwork, :date_created, :date_updated, :name, :file
  mount_uploader :file, ArtworkUploader
end
