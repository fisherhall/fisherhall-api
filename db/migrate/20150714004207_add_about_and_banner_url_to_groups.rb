class AddAboutAndBannerUrlToGroups < ActiveRecord::Migration[4.2]
  def change
    add_column :basechurch_groups, :about, :text
  end
end
