class MusiquesController < ApplicationController
  def index
    @musique = Musique.all
  end
end
