class Album < ActiveRecord::Base
  belongs_to :user
  has_many :songs
  attr_accessible :artwork, :date_created, :date_updated, :name, :file
  mount_uploader :file, ArtworkUploader
  validates :name, presence: true
  validates :file, presence: true
  validates :date_updated,
          date: { after: :date_created, message: 'you can set date date edited before you have created the song' }




end
