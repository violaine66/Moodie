class RessourcesController < ApplicationController
  before_action :set_ressources, only: %i[index pres_de_chez_moi]

  def index
    @ressources.all
    if params[:query].present?
      sql_subquery = "title ILIKE :query OR description ILIKE :query"
      @ressources = @ressources.where(sql_subquery, query: "%#{params[:query]}%")
    end

    respond_to do |format|
      format.html # Follow regular flow of Rails
      format.text { render partial: "ressources/list", locals: {ressources: @ressources}, formats: [:html] }
    end
  end

  def pres_de_chez_moi
    @pres_de_chez_moi = @ressources.where(category: "Près de chez moi")
  end

  private

  def set_ressources
    @ressources = Ressource.all
  end
end
