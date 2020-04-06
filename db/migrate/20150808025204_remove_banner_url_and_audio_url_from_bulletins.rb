class RemoveBannerUrlAndAudioUrlFromBulletins < ActiveRecord::Migration[4.2]
  def change
    remove_column :basechurch_bulletins, :banner_url, :string
    remove_column :basechurch_bulletins, :audio_url, :string
  end
end
