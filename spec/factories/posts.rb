FactoryBot.define do
  factory :post do
    group
    author
    content { Faker::Markdown.sandwich(sentences: 6, repeat: 3) }
    kind { :post }

    factory :page do
      kind { :page }
    end

    trait :completed do
      published_at { 2.days.ago }
      tag_list { Faker::Lorem.words }
      sequence(:banner_url) { |n| "https://picsum.photos/seed/postbanner#{n}/1920/1080" }
    end
  end
end
