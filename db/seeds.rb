groups = 
  FactoryBot.create_list(:group, 10, :completed) +
  [FactoryBot.create(:group, :completed, name: "English Service", slug: "english-service")]

groups.each do |g|
  FactoryBot.create_list(:post, 10, :completed, group: g)
  FactoryBot.create(:bulletin_with_announcements, :completed, group: g)
end
