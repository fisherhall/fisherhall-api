groups = 
  FactoryBot.create_list(:group, 10, :completed) +
  [FactoryBot.create(:group, :completed, name: "English Service", slug: "english-service")]

groups.each do |g|
  FactoryBot.create_list(:post, 100, :completed, group: g)
  bulletin = FactoryBot.create(:bulletin, :completed, group: g)
  FactoryBot.create_list(:announcement, 3, bulletin: bulletin)
end
