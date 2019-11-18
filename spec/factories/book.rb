FactoryBot.define do
  factory :book do
    name { Faker::Book.title }
    editorial { create :editorial }
  end
end
