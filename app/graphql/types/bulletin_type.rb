module Types
  class BulletinType < Types::BaseObject
    field :id, ID, null: false
    field :group, Types::GroupType, null: false
    field :name, String, null: false
    field :service_order, String, null: false
    field :sermon_notes, String, null: true
    field :published_at, String, null: true
    field :announcements, [AnnouncementType], null: false

    def announcements
      object.announcements.order(:position)
    end
  end
end
