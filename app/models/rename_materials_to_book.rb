class RenameMaterialsToBook < ApplicationRecord
    def change 
       rename_table :material, :book 
    end
end
