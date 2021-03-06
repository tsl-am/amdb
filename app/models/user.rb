class User < ActiveRecord::Base
  attr_accessible :email, :name, :password, :password_confirmation
  
  has_secure_password
  
  has_many :votes
  
  validates_presence_of :name, :email
  validates_uniqueness_of :email
  
end
