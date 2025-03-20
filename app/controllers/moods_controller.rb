class MoodsController < ApplicationController
  before_action :authenticate_user!  # Assurer que l'utilisateur est connecté

  def new
    @mood = current_user.moods.build  # Créer une nouvelle humeur pour l'utilisateur actuel
  end

  def create
    @mood = current_user.moods.build(mood_params)  # Associer l'utilisateur actuel à l'humeur

    if @mood.save
      redirect_to moods_path, notice: 'Humeur enregistrée avec succès.'
    else
      render :new  # Si l'humeur n'est pas valide, on reste sur le formulaire pour corriger l'erreur
    end
  end

  def index
    # Récupérer les dernières humeurs pour chaque jour
    @moods = current_user.moods.latest_per_day
  end

  def show
    redirect_to moods_path
  end

  private

  def mood_params
    params.require(:mood).permit(:value, :date)  # Permettre l'envoi des champs :value et :date depuis le formulaire
  end
end
