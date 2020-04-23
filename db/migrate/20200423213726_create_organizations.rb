class CreateOrganizations < ActiveRecord::Migration[6.0]
  def change
    create_table :organizations do |t|
      t.string :name, null: false
      t.string :description
      t.string :slug, null: false

      t.timestamps
    end
  end
end
