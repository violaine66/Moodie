class Mood < ApplicationRecord
  belongs_to :user
  has_many :journal_posts

  validates :value, presence: true, inclusion: { in: 1..7 }
  validates :date, presence: true

    def emoji_url
      case value
      when 1..3
        "https://res.cloudinary.com/dbggxy9uy/image/upload/v1742735269/2026645_ce84cs.png" # Triste
      when 4
        "https://res.cloudinary.com/dbggxy9uy/image/upload/v1742735300/2026759_amrmxz.png" # Neutre
      when 5..7
        "https://res.cloudinary.com/dbggxy9uy/image/upload/v1742735284/2026760_q61j0m.png"
      else
        "" # Cas par défaut
      end
    end

  # Scope pour récupérer la dernière humeur par jour
  scope :latest_per_day, -> {
    select("DISTINCT ON (DATE(date)) *")
      .order("DATE(date) DESC, created_at DESC")
  }

  def start_time
    self.date  # Utiliser la date de l'humeur pour le calendrier
  end
end
