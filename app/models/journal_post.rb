class JournalPost < ApplicationRecord
  belongs_to :user
  belongs_to :mood, optional: true
  validates :date, presence: true
  validates :content, presence: true, length: { minimum: 5 }

  # def emoji_url
  #   mood = Mood.find_by("Date(created_at) = ?", created_at.to_date)
  #   mood.present? ? mood.emoji_url : nil
  # end
end
