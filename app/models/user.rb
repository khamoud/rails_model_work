class User < ActiveRecord::Base
  attr_accessible :email_address, :first_name, :last_name
  has_many :messages, :dependent => :destroy
  has_many :posts, :dependent => :destroy
  has_many :blogs, :through => :owners
  has_many :owners, :dependent => :destroy
  has_many :comments, :as => :commentable
  validates :first_name, :last_name, :email_address, :presence => true
  validates :first_name, :last_name, :length => {:minimum => 2}
end
