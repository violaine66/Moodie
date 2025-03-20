class CreateChatMessages < ActiveRecord::Migration[7.1]
  def change
    create_table :chat_messages do |t|
      t.string :user_message
      t.text :ai_response

      t.timestamps
    end
  end
end
