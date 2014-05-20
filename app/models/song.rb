class Song < ActiveRecord::Base
  belongs_to :user
  belongs_to :album  
  belongs_to :artist
  attr_accessible :date_created, :date_modifed, :file, :name
  mount_uploader :file, SongUploader
end
