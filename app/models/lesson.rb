class Lesson < ActiveRecord::Base
  has_many :posts, :dependent => :destroy 
  
  validates_uniqueness_of :title
  validates_presence_of :title, :description, :content
end
