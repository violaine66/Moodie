class RessourcesController < ApplicationController
  before_action :set_ressources, only: %i[index pres_de_chez_moi]

  def index
    @ressources.all
  end

  def pres_de_chez_moi
    @pres_de_chez_moi = @ressources.where(category: "Pres de chez moi")
  end

  private

  def set_ressources
    @ressources = Ressource.all
  end
end
