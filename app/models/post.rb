class Post < ActiveRecord::Base
  has_many :comments, dependent: :destroy
  #belongs_to :user
  #belongs_to :project
  validates:content, presence: true, length: { maximum: 140}
end
