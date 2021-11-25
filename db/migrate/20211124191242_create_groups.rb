class CreateGroups < ActiveRecord::Migration[6.0]
  def change
    create_table :groups do |t|
      t.string :name
      t.string :style
      t.string :author
      t.integer :year
      t.integer :coac_position
      t.string :image_url

      t.timestamps
    end
  end
end
