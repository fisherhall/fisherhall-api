class AddKindToPosts < ActiveRecord::Migration[4.2]
  def change
    add_column :posts, :kind, :integer, default: 0
  end
end
