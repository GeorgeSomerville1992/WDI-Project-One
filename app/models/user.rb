class User < ActiveRecord::Base
  has_secure_password
  has_many :songs
  has_many :albums 
  has_many :artists
  has_many :albums 
  has_many :comments
  attr_accessible :created_at, :email, :name, :role, :updated_at, :password, :password_confirmation
end
