class User < ActiveRecord::Base
  has_secure_password
  has_many :songs
  has_many :albums 
  has_many :artists
  has_many :albums 
  has_many :comments
  has_one :profile
  attr_accessible :email, :name, :password, :password_confirmation
  before_create :default_role
  after_create :create_user_profile

  def role?(role)
    self.role.to_s == role.to_s
  end

  def default_role
    self.role = 'user'
  end

  def create_user_profile
    create_profile
  end
end
