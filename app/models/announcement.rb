class Announcement < ApplicationRecord
  belongs_to :post, optional: true
  belongs_to :bulletin

  acts_as_list scope: :bulletin

  validates :bulletin, presence: true
  validates :description, presence: true
end
