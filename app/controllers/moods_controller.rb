class MoodsController < ApplicationController
  before_action :authenticate_user!  # Assurer que l'utilisateur est connecté

  def question
  end

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

  def get_emoji_url(mood_value)
    mood_emojis = [
      "https://res.cloudinary.com/dbggxy9uy/image/upload/v1742735269/2026645_ce84cs.png",  # Très mal
      "https://res.cloudinary.com/dbggxy9uy/image/upload/v1742735269/2026645_ce84cs.png",  # Mal
      "https://res.cloudinary.com/dbggxy9uy/image/upload/v1742735269/2026645_ce84cs.png",  # Plutôt mal
      "https://res.cloudinary.com/dbggxy9uy/image/upload/v1742735300/2026759_amrmxz.png",  # Moyen
      "https://res.cloudinary.com/dbggxy9uy/image/upload/v1742735284/2026760_q61j0m.png",  # Plutôt bien
      "https://res.cloudinary.com/dbggxy9uy/image/upload/v1742735284/2026760_q61j0m.png",  # Bien
      "https://res.cloudinary.com/dbggxy9uy/image/upload/v1742735284/2026760_q61j0m.png"   # Très bien
    ]
    mood_emojis[mood_value.to_i - 1]  # Récupère l'URL de l'emoji correspondant à la valeur de l'humeur
  end


  def mood_params
    params.require(:mood).permit(:value, :date)  # Permettre l'envoi des champs :value et :date depuis le formulaire
  end
end
