require "rails_helper"

RSpec.describe Types::GroupType do
  let(:group) { create(:group) }

  describe "posts" do
    let!(:posts) do
      posts = Timecop.freeze(5.days.ago) do
        create_list(:post, 10, group: group)
      end

      [create(:post, group: group)] + posts
    end

    let(:gql) do
      <<-GQL
        query($slug: String!, $afterPost: String) {
          group(slug: $slug) {
            posts(after: $afterPost) {
              edges {
                cursor
                node {
                  id
                }
              }
            }
          }
        }
      GQL
    end

    let(:result) { FisherhallApiSchema.execute(gql, variables: { slug: group.slug }) }

    before do
      create(:post)
    end

    it "returns the ten latest posts" do
      expect(result["data"]["group"]["posts"]["edges"].map { |edge| edge["node"]["id"].to_i }).
        to eq posts.first(10).map(&:id)
    end

    context "when a cursor is provided" do
      let(:cursor) do
        result = FisherhallApiSchema.execute(gql, variables: { slug: group.slug })
        result["data"]["group"]["posts"]["edges"].last["cursor"]
      end

      let(:result) do
        FisherhallApiSchema.execute(gql, variables: { slug: group.slug, afterPost: cursor })
      end

      it "returns posts after the cursor" do
        expect(result["data"]["group"]["posts"]["edges"].map { |edge| edge["node"]["id"].to_i }).
          to eq [posts.last.id]
      end
    end
  end

  describe "bulletins" do
    let!(:bulletins) do
      bulletins = Timecop.freeze(5.days.ago) do
        create_list(:bulletin, 10, group: group)
      end

      [create(:bulletin, group: group)] + bulletins
    end

    let(:gql) do
      <<-GQL
        query($slug: String!, $afterBulletin: String) {
          group(slug: $slug) {
            bulletins(after: $afterBulletin) {
              edges {
                cursor
                node {
                  id
                }
              }
            }
          }
        }
      GQL
    end

    let(:result) { FisherhallApiSchema.execute(gql, variables: { slug: group.slug }) }

    before do
      create(:bulletin)
    end

    it "returns the ten latest bulletins" do
      expect(result["data"]["group"]["bulletins"]["edges"].map { |edge| edge["node"]["id"].to_i }).
        to eq bulletins.first(10).map(&:id)
    end

    context "when a cursor is provided" do
      let(:cursor) do
        result = FisherhallApiSchema.execute(gql, variables: { slug: group.slug })
        result["data"]["group"]["bulletins"]["edges"].last["cursor"]
      end

      let(:result) do
        FisherhallApiSchema.execute(gql, variables: { slug: group.slug, afterBulletin: cursor })
      end

      it "returns bulletins after the cursor" do
        expect(result["data"]["group"]["bulletins"]["edges"].map { |edge| edge["node"]["id"].to_i }).
          to eq [bulletins.last.id]
      end
    end
  end
end

