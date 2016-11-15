#require 'ffaker'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#require 'factory_girl'
#Dir[Rails.root.join("spec/factories/*.rb")].each {|f| require f}
#
#require 'support/factory_girl'

10.times do
  FactoryGirl.create :user
  FactoryGirl.create :post
  FactoryGirl.create :project
  FactoryGirl.create :task
  FactoryGirl.create :team
end
############################

#3.times do |i|
#  User.create( 
#  	email: FFaker::Internet.email, 
#  	password: "password", 
#  	first_name: FFaker::Name.first_name,
#  	last_name: FFaker::Name.last_name , 
#  	admin: false)
#end
#########################
#require 'factory_girl_rails'

#10.times do
#  FactoryGirl.create :user
#end