class Project < ActiveRecord::Base
  has_many :tasks
  has_many :posts
  has_many :teams
end
