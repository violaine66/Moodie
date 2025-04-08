class RessourcesController < ApplicationController
  def index
    @ressources = Ressource.where(adress: nil)
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
    if params[:adress].present?
      @pres_de_chez_moi = Ressource.near(params[:adress], 10) # 10 km
    else
      @pres_de_chez_moi = Ressource.where.not(adress: [nil, ""])
    end
  end
end
