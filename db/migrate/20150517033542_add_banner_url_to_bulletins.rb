class AddBannerUrlToBulletins < ActiveRecord::Migration[4.2]
  def change
    add_column :basechurch_bulletins, :banner_url, :string
  end
end
