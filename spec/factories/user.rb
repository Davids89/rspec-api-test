FactoryBot.define do
  factory :user do
    name { Faker::Movies::LordOfTheRings.character }
    surname { 'Rodriguez' }
    email { Faker::Internet::unique.email }
    password { 'aaa' }

    trait :admin do
      admin { true }
    end
  end
end
