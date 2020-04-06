class AddSermonNotesToBulletins < ActiveRecord::Migration[4.2]
  def change
    add_column :basechurch_bulletins, :sermon_notes, :text
  end
end
