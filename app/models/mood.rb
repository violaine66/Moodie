class Mood < ApplicationRecord
  belongs_to :user

  validates :value, presence: true, inclusion: { in: 1..6 }
  validates :date, presence: true


  def color
    case value
    when 1 then 'red'
    when 2 then 'orange'
    when 3 then 'yellow'
    when 4 then 'green'
    when 5 then 'blue'
    when 6 then 'purple'
    else 'gray' # Valeur par défaut
    end
  end

    # Scope pour récupérer la dernière humeur par jour, utilisant DISTINCT ON
  scope :latest_per_day, -> {
    select("DISTINCT ON (DATE(date)) *")  # Récupérer la première ligne pour chaque jour
      .order("DATE(date) DESC, created_at DESC")  # Trier par date et ensuite par la date de création pour obtenir la plus récente
  }
end
