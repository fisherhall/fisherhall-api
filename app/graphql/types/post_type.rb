module Types
  class PostType < Types::BaseObject
    field :id, ID, null: false
    field :title, String, null: true
    field :group, Types::GroupType, null: false
    field :content, String, null: false
    field :published_at, String, null: true
    field :banner_url, String, null: true
    field :kind, String, null: false
    field :slug, String, null: false
  end
end
