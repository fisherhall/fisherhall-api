FactoryBot.define do
  factory :organization do
    sequence(:name) { |n| "Organization #{n}" }
    description { Faker::Lorem.sentence }
  end
end
