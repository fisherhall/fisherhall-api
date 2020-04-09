module Types
  class GroupType < Types::BaseObject
    field :id, ID, null: false
    field :name, String, null: false
    field :slug, String, null: false
    field :short_description, String, null: false
    field :meet_details, String, null: false
    field :target_audience, String, null: false
    field :banner_url, String, null: true
    field :profile_picture_url, String, null: true
    field :posts, [Types::PostType], null: false
    field :bulletins, [Types::BulletinType], null: false

    def posts
      object.posts.order("published_at DESC")
    end

    def bulletins
      object.bulletins.order("published_at DESC")
    end
  end
end
