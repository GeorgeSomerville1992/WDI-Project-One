class Song < ActiveRecord::Base
  belongs_to :user
  belongs_to :album  
  belongs_to :artist
  belongs_to :profile
  has_many :comments
  attr_accessible :date_created, :date_modifed, :file, :name
  mount_uploader :file, SongUploader
end
