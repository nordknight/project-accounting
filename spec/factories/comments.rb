FactoryGirl.define do
  factory :comment do
  	content {FFaker::Lorem.sentence}
  	post_id {rand(1..40)}
  end
end