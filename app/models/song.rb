class Song < ActiveRecord::Base
  belongs_to :user
  belongs_to :album  
  belongs_to :artist
  belongs_to :profile
  has_many :comments
  attr_accessible :date_created, :date_modifed, :file, :name
  mount_uploader :file, SongUploader
  validates :name, presence: true
  validates :file, presence: true
  validates :date_modifed,
          date: { after: :date_created, message: 'you can set date date edited before you have created the song' }










end
