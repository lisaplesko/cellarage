# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :wine do
    name "MyString"
    vineyard "MyString"
    description "MyString"
    price 1.5
    year "2014-05-18"
    category "MyString"
    grape "MyString"
    occasion "MyString"
  end
end
