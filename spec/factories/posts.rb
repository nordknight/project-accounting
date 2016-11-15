FactoryGirl.define do
  factory :post do
  	content {FFaker::Lorem.sentence}
  	
  end
end