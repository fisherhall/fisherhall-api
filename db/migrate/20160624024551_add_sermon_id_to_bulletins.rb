class AddSermonIdToBulletins < ActiveRecord::Migration[4.2]
  def change
    add_reference :bulletins, :sermon, index: true, foreign_key: true
  end
end
