module Types
  class QueryType < Types::BaseObject
    field :group, GroupType, null: true do
      description "Find a group by slug"
      argument :slug, String, required: true
    end

    field :groups, [GroupType], null: false do
      description "List all groups"
      argument :organization_id, ID, required: true
    end

    field :post, PostType, null: true do
      description "Find a post by ID"
      argument :id, ID, required: true
    end

    field :service, BulletinType, null: true do
      description "Find a service by bulletin ID"
      argument :id, ID, required: true
    end

    def group(slug:)
      Group.find_by(slug: slug)
    end

    def groups(organization_id:)
      Group.where(organization_id: organization_id).order(:name)
    end

    def post(id:)
      Post.find(id)
    end

    def service(id:)
      Bulletin.find(id)
    end
  end
end
