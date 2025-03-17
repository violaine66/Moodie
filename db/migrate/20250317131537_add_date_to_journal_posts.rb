class AddDateToJournalPosts < ActiveRecord::Migration[7.1]
  def change
    add_column :journal_posts, :date, :date, default: -> { 'CURRENT_DATE' }
  end
end
