class AddDateToMoods < ActiveRecord::Migration[7.1]
  def change
    add_column :moods, :date, :date
  end
end
