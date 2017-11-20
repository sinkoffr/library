class CreateAlterMaterialsRemoveMaterialIds < ActiveRecord::Migration[5.0]
  def change
    create_table :alter_materials_remove_material_ids do |t|
        remove_column :materials, :material_id, :integer
      t.timestamps
    end
  end
end
