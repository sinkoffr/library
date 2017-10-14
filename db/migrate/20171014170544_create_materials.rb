class CreateMaterials < ActiveRecord::Migration[5.0]
  def change
    create_table :materials do |t|
      t.string :title
      t.string :author
      t.text :description
      t.string :cover_art
      
      t.timestamps
    end
  end
end
