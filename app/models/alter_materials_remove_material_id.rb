class AlterMaterialsRemoveMaterialId < ApplicationRecord
    def change 
       rename_table :material, :book 
    end
end
