class Mood < ApplicationRecord
  belongs_to :user

  validates :value, presence: true, inclusion: { in: 1..6 }
  validates :date, presence: true

  def color
    mood_colors = {
      1 => 'rgb(66, 21, 163)',  # Violet foncé
      2 => 'rgb(47, 120, 246)',  # Bleu
      3 => 'rgb(210, 224, 251)', # Bleu clair
      4 => 'rgb(168, 230, 207)', # Vert menthe
      5 => 'rgb(250, 255, 197)', # Jaune pâle
      6 => 'rgb(255, 209, 102)'  # Jaune orangé
    }
    mood_colors.fetch(value, 'white') # Retourne la couleur ou 'white' si la valeur est invalide
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
