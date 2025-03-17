class ChangeColumnTypeInResources < ActiveRecord::Migration[7.1]
  def change
    change_column :resources, :description, :text
  end
end
