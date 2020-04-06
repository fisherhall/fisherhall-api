class AddUrlToAnnouncements < ActiveRecord::Migration[4.2]
  def change
    add_column :basechurch_announcements, :url, :string
  end
end
