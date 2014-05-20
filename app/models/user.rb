class User < ActiveRecord::Base
  has_secure_password
  has_many :songs
  has_many :albums 
  has_many :artists
  has_many :albums 
  has_many :comments
  attr_accessible :email, :name, :password, :password_confirmation
end
