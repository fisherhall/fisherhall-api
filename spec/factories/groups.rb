FactoryBot.define do
  factory :group do
    sequence(:name) { |n| "Group #{n}" }
    short_description { Faker::Lorem.paragraph }
    meet_details { Faker::Lorem.sentence }
    target_audience { Faker::Lorem.sentence }

    trait :completed do
      about do
        Faker::Lorem.paragraph(sentence_count: 2, supplemental: true, random_sentences_to_add: 4)
      end
      banner_url { Faker::Internet.url(path: '/banner.png') }
      profile_picture_url { Faker::Internet.url(path: '/profile-picture.png') }
    end
  end
end
