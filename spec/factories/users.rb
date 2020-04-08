FactoryBot.define do
  factory :user, aliases: [:author, :editor] do
    name { Faker::Name.name }
    email { Faker::Internet.free_email(name: name) }
    uid { Faker::Internet.uuid }
    provider { "facebook" }
  end
end
