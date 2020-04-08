FactoryBot.define do
  factory :attachment do
    url { Faker::Internet.url(host: 'example.com', path: '/image.png') }
  end
end
