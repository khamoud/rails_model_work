class Comment < ActiveRecord::Base
  belongs_to :commentable
  attr_accessible :content
  validates :content, :presence => true
end
