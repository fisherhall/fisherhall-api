FactoryBot.define do
  factory :announcement do
    bulletin
    description do
      Faker::Lorem.paragraph(sentence_count: 2, supplemental: false, random_sentences_to_add: 4)
    end
  end
end
