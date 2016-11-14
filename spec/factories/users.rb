FactoryGirl.define do
  factory :user do
  	email 'test@test.by'
  	password 'password'
  	first_name 'John'
  	last_name 'Smith'
  	admin false
  end
end
