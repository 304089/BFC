class CreateRelations < ActiveRecord::Migration[5.2]
  def change
    create_table :relations do |t|
      
      t.integer :follower_id
      t.integer :followed
      t.timestamps
    end
  end
end
