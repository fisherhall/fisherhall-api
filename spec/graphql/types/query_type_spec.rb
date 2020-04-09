require "rails_helper"

RSpec.describe Types::QueryType do
  describe "group" do
    it "loads groups by ID" do
      gql = <<-GQL
        query($id: ID!) {
          group(id: $id) {
            id
            name
          }
        }
      GQL

      group = create(:group, name: "Test Group")
      result = FisherhallApiSchema.execute(gql, variables: { id: group.id })

      expect(result["data"]["group"]["id"]).to eq group.id.to_s
      expect(result["data"]["group"]["name"]).to eq group.name
    end
  end

  describe "groups" do
    it "loads all groups in alphabetical order" do
      gql = <<-GQL
        query {
          groups {
            id
            name
          }
        }
      GQL

      groups = create_list(:group, 3)
      result = FisherhallApiSchema.execute(gql)

      expect(groups.map { |g| [g.id.to_s, g.name] }).
        to eq result["data"]["groups"].map { |g| [g["id"].to_s, g["name"]] }
    end
  end
end

