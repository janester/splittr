# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :item do
    price 1.5
    name "MyString"
    person_id 1
  end
end
