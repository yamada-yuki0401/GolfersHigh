FactoryBot.define do
  factory :messerge do
    comment { Faker::Lorem.characters(number: 100) }
  end
end
