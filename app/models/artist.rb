class Artist < ActiveRecord::Base
  belongs_to :user
  has_many :albums
  has_many :songs
  attr_accessible :date_created, :date_updated, :name, :picture
end
