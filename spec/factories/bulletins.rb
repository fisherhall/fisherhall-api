FactoryBot.define do
  factory :bulletin do
    group
    published_at { DateTime.now }

    trait :completed do
      banner_url { Faker::Internet.url(path: '/banner.png') }
      sequence(:name) { |n| "Bulletin #{n}" }
      service_order { Faker::Markdown.sandwich(sentences: 6, repeat: 3) }
    end

    factory :bulletin_with_announcements do
      transient do
        announcements_count { 3 }
      end

      after(:create) do |bulletin, evaluator|
        create_list(:announcement,
                    evaluator.announcements_count,
                    bulletin: bulletin)
      end
    end
  end
end
