UNIQUES = {}

def unique_email
   email_name = FFaker::Internet.email   
   email_name = FFaker::Internet.email while UNIQUES.include? email_name
   UNIQUES[email_name] = true
   email_name
end

FactoryGirl.define do
  factory :user do
  	email { unique_email }
    password "password"
    password_confirmation "password"
  	first_name {FFaker::Name.first_name}
  	last_name {FFaker::Name.last_name}
  	admin false
  end
end
