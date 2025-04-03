class AddMoodToJournalPosts < ActiveRecord::Migration[7.1]
  def change
    unless column_exists?(:journal_posts, :mood_id)
      add_reference :journal_posts, :mood, null: true, foreign_key: true
    end
  end
end
