import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="color-on-moods"
export default class extends Controller {
  static targets = ["slider", "colorDisplay"]

  connect() {
    this.updateColor(); // Met à jour la couleur à l'initialisation
  }

  updateColor() {
    const value = parseInt(this.sliderTarget.value);
    let color = '';

    switch(value) {
      case 1:
        color = 'rgb(66, 21, 163)'; // Bleu foncé
        break;
      case 2:
        color = 'rgb(47, 120, 246)'; // Bleu clair
        break;
      case 3:
        color = 'rgb(210, 224, 251)'; // Bleu très clair
        break;
      case 4:
        color = 'rgb(168, 230, 207)'; // Vert clair
        break;
      case 5:
        color = 'rgb(250, 255, 197)'; // Jaune pâle
        break;
      case 6:
        color = 'rgb(255, 209, 102)'; // Jaune foncé
        break;
    }

    this.colorDisplayTarget.style.backgroundColor = color;
  }
}

