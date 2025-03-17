class CreateResources < ActiveRecord::Migration[7.1]
  def change
    create_table :resources do |t|
      t.string :title
      t.string :description
      t.string :url
      t.string :category
      t.string :adress
      t.decimal :longitude
      t.decimal :latitude

      t.timestamps
    end
  end
end
