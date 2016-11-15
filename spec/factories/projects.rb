FactoryGirl.define do
  factory :project do
  	name {FFaker::CompanyIT.name}
    summary {FFaker::Lorem.sentence}
    start_date {FFaker::Time.between(1.day.from_now, 1.year.from_now)}
  	end_date {FFaker::Time.between(1.year.from_now, 2.year.from_now)}
  end
end