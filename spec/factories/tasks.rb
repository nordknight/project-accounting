FactoryGirl.define do
  factory :task do
  	title {FFaker::CompanyIT.name}
  	content {FFaker::Company.catch_phrase}
  	status {FFaker::Lorem.sentence}
  	start_date {FFaker::Time.between(1.day.from_now, 1.year.from_now)}
  	due_date {FFaker::Time.between(1.year.from_now, 2.year.from_now)}
  	estimation {FFaker::Lorem.sentence}
  end
end
