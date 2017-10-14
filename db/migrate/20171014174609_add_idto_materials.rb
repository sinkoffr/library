class AddIdtoMaterials < ActiveRecord::Migration[5.0]
  def change
    add_column :materials, :material_id, :integer
  end
end
