class RemoveAttachments < ActiveRecord::Migration[4.2]
  def change
    drop_table :basechurch_attachments
  end
end
