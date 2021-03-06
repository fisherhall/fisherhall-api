org = FactoryBot.create(
  :organization,
  name: "Montreal Chinese Alliance Church",
  slug: "mcac"
)

groups = 
  FactoryBot.create_list(:group, 10, :completed, organization: org) +
  [FactoryBot.create(:group, :completed, name: "English Service", slug: "english-service", organization: org)]

groups.each do |g|
  FactoryBot.create_list(:post, 30, :completed, group: g)
  FactoryBot.create_list(:bulletin, 3, :completed, group: g).each do |bulletin|
    FactoryBot.create_list(:announcement, 3, bulletin: bulletin)
  end
end
