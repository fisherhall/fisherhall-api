FactoryBot.define do
  factory :sermon do
    group
    sequence(:name) { |n| "Sermon #{n}" }
    published_at { DateTime.now }
    speaker { Faker::Name.name }

    trait :completed do
      audio_url { Faker::Internet.url(path: '/sermon.mp3') }
      banner_url { Faker::Internet.url(path: '/banner.png') }
    end
  end
end
