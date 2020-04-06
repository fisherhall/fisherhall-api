class AddGroupIdToBulletins < ActiveRecord::Migration[4.2]
  def change
    add_column :basechurch_bulletins, :group_id, :integer
  end
end
