FactoryBot.define do
  factory :book do
    name { Faker::Book.title }
    editorial { 'Editorial' }
  end
end