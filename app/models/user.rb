class User < ActiveRecord::Base
  attr_accessible :email, :name
  
  has_many :votes
  
  validates_presence_of :name, :email
  validates_uniqueness_of :email
  
end
