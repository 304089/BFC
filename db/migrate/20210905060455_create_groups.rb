class CreateGroups < ActiveRecord::Migration[5.2]
  def change
    create_table :groups do |t|
      
      t.string :name
      t.string :icon_image_id
      t.string :caption
      t.timestamps
    end
  end
end
