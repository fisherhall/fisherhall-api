class AddBannerUrlToPost < ActiveRecord::Migration[4.2]
  def change
    add_column :basechurch_posts, :banner_url, :string
  end
end
