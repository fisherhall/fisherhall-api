class RemoveBannerUrlFromPost < ActiveRecord::Migration[4.2]
  def change
    remove_column :basechurch_posts, :banner_url, :string
  end
end
