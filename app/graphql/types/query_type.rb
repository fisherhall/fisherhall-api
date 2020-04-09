module Types
  class QueryType < Types::BaseObject
    field :group, GroupType, null: true do
      description "Find a group by ID"
      argument :id, ID, required: true
    end

    field :groups, [GroupType], null: false do
      description "List all groups"
    end

    def group(id:)
      Group.find(id)
    end

    def groups
      Group.order(:name)
    end
  end
end
