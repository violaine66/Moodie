class JournalPost < ApplicationRecord
  belongs_to :user
  validates :date, presence: true
  validates :content, presence: true, length: { minimum: 5 }
end
