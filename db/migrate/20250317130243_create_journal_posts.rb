class CreateJournalPosts < ActiveRecord::Migration[7.1]
  def change
    create_table :journal_posts do |t|
      t.text :content
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
