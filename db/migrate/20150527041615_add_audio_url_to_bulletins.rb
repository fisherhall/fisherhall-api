class AddAudioUrlToBulletins < ActiveRecord::Migration[4.2]
  def change
    add_column :basechurch_bulletins, :audio_url, :string
  end
end
