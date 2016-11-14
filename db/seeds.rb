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
#10.times do
#  Factory.create :user
#end
5.times do |i|
  User.create( email: "test##{i}@test.by", password: "password", first_name: "User ##{i}",last_name: "Last name ##{i}", admin: false)
end