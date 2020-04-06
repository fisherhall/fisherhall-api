class CreateBulletins < ActiveRecord::Migration[4.2]
  def change
    create_table :basechurch_bulletins do |t|
      t.datetime :date
      t.string :name
      t.string :description
      t.text :service_order

      t.timestamps
    end
  end
end
