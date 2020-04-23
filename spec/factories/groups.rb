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
      sequence(:banner_url) { |n| "https://picsum.photos/seed/banner#{n}/1920/1080" }
      sequence(:profile_picture_url) { |n| "https://picsum.photos/seed/profile#{n}/512/512" }
    end
  end
end
