class DropApikeysTable < ActiveRecord::Migration[4.2]
  def up
    drop_table :api_keys
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
