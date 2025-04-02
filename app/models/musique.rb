class Musique < ApplicationRecord
  validates :lien, presence: true, format: { with: /\Ahttps:\/\/www\.youtube\.com\/\S+\z/, message: "doit être un lien YouTube valide" }
end
