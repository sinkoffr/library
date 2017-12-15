class CreateRenameMaterialsToBooks < ActiveRecord::Migration[5.0]
  def change
    rename_table :materials, :books
  end
end
