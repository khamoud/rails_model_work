class Post < ActiveRecord::Base
  belongs_to :blog
  belongs_to :user
  has_many :comments, :as => :commentable
  has_many :messages, :dependent => :destroy
  attr_accessible :content, :title
  validates :content, :title, :presence => true
  validates :content, :length => {:minimum => 15}
end
