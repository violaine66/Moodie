class JournalPost < ApplicationRecord
  belongs_to :user
  belongs_to :mood, optional: true
  validates :date, presence: true
  validates :content, presence: true, length: { minimum: 5 }
end
