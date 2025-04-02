class CreateMusiques < ActiveRecord::Migration[7.1]
  def change
    create_table :musiques do |t|
      t.string :lien

      t.timestamps
    end
  end
end
