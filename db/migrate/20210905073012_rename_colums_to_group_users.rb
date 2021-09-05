class RenameColumsToGroupUsers < ActiveRecord::Migration[5.2]
  def change
    rename_column :group_users, :group, :group_id
  end
end
