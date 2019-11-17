FactoryBot.define do
  factory :user do
    name { Faker::Movies::LordOfTheRings.character }
    surname { 'Rodriguez' }
  end
end
