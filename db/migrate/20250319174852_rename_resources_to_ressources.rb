class RenameResourcesToRessources < ActiveRecord::Migration[7.1]
  def change
    rename_table :resources, :ressources
  end
end
