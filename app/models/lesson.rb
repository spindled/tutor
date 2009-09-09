class Lesson < ActiveRecord::Base
  has_many :posts
  
  validates_uniqueness_of :title
  validates_presence_of :title, :description, :content
end
