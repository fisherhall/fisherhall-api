class RenameDateColumn < ActiveRecord::Migration[4.2]
  def change
    rename_column :basechurch_bulletins, :date, :published_at
  end
end
