require "rails_helper"

RSpec.describe Types::QueryType do
  describe "group" do
    it "loads groups by slug" do
      gql = <<-GQL
        query($slug: String!) {
          group(slug: $slug) {
            id
            name
          }
        }
      GQL

      group = create(:group, name: "Test Group")
      result = FisherhallApiSchema.execute(gql, variables: { slug: group.slug })

      expect(result["data"]["group"]["id"]).to eq group.id.to_s
      expect(result["data"]["group"]["name"]).to eq group.name
    end
  end

  describe "groups" do
    let(:organization) { create(:organization) }

    before do
      create(:group)
    end

    it "loads all groups of an organization in alphabetical order" do
      gql = <<-GQL
        query($organizationId: ID) {
          groups(organizationId: $organizationId) {
            id
            name
          }
        }
      GQL

      groups = create_list(:group, 3, organization_id: organization.id)
      result = FisherhallApiSchema.execute(gql, variables: { organizationId: organization.id })

      expect(result["data"]["groups"].map { |g| [g["id"].to_s, g["name"]] }).
        to eq groups.sort_by(&:name).map { |g| [g.id.to_s, g.name] }
    end

    context "when no organization_id is provided" do
      let(:groups) { Group.where(organization_id: 1).order(:name) }

      before do
        create_list(:group, 3, organization_id: 1)
      end
      
      it "loads all groups of the first organization in alphabetical order" do
        gql = <<-GQL
          query($organizationId: ID) {
            groups(organizationId: $organizationId) {
              id
              name
            }
          }
        GQL

        result = FisherhallApiSchema.execute(gql)

        expect(result["data"]["groups"].map { |g| [g["id"].to_s, g["name"]] }).
          to eq groups.map { |g| [g.id.to_s, g.name] }
      end
    end
  end

  describe "post" do
    it "loads post by id" do
      gql = <<-GQL
        query($id: ID!) {
          post(id: $id) {
            id
            title
          }
        }
      GQL

      post = create(:post, title: "Test Post")
      result = FisherhallApiSchema.execute(gql, variables: { id: post.id })

      expect(result["data"]["post"]["id"]).to eq post.id.to_s
      expect(result["data"]["post"]["title"]).to eq post.title
    end
  end
end

