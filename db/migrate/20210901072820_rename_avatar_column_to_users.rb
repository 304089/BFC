class RenameAvatarColumnToUsers < ActiveRecord::Migration[5.2]
  def change
    rename_column :users, :avatar, :profile_image_id
  end
end
