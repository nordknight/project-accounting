class Post < ActiveRecord::Base
  has_many :comments
  #belongs_to :user
  #belongs_to :project
  validates:content, length: { maximum: 140}
end
