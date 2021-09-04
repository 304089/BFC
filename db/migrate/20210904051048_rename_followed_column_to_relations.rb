class RenameFollowedColumnToRelations < ActiveRecord::Migration[5.2]
  def change
    rename_column :relations, :followed, :followed_id
  end
end
