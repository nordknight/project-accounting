class Team < ActiveRecord::Base
  #belongs_to: project
  has_many :users
  has_many :projects
  validates :name, presence: true, length: { minimum: 3 }
  
end
