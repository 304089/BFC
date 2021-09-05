class CreateGroupChats < ActiveRecord::Migration[5.2]
  def change
    create_table :group_chats do |t|

      t.integer :user_id
      t.integer :group_id
      t.text :comment
      t.string :image_id
      t.timestamps
    end
  end
end
