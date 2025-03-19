class RessourcesController < ApplicationController
  def index
    @ressources = Ressource.all
  end

  def pres_de_chez_moi
    @ressources.where(category: "Pres de chez moi")
  end
end
