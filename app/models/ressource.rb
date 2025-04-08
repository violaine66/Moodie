class Ressource < ApplicationRecord
  geocoded_by :adress
  after_validation :geocode, if: :will_save_change_to_adress?
end
