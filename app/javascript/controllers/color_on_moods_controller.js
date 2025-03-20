import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="color-on-moods"
export default class extends Controller {
  static targets = ["slider", "colorDisplay", "moodText"]

  connect() {
    this.updateColor(); // Met à jour la couleur à l'initialisation
  }

  updateColor() {
    const value = parseInt(this.sliderTarget.value);
    let color = '';
    let moodText = '';

    switch(value) {
      case 1:
        color = 'rgb(66, 21, 163)'; // Bleu foncé
        moodText = "Très mal";
        break;
      case 2:
        color = 'rgb(47, 120, 246)'; // Bleu clair
        moodText = "Mal";
        break;
      case 3:
        color = 'rgb(210, 224, 251)'; // Bleu très clair
        moodText = "Un peu mal";
        break;
      case 4:
        color = 'rgb(241, 243, 247)'; // Blanc
        moodText = "Neutre";
        break;
      case 5:
        color = 'rgb(250, 255, 197)';
        moodText = "Un peu bien";
        break;
      case 6:
        color = 'rgb(245, 255, 138)'; // Jaune pâle
        moodText =  "Bien";
        break;
      case 7:
        color = 'rgb(244, 216, 3)'; // Jaune foncé
        moodText = "Très bien";
        break;
    }

    this.colorDisplayTarget.style.backgroundColor = color;
    this.moodTextTarget.innerText = moodText;
  }
}
