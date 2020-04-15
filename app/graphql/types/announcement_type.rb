module Types
  class AnnouncementType < Types::BaseObject
    field :id, ID, null: false
    field :position, Integer, null: false
    field :description, String, null: false
    field :url, String, null: true
  end
end
