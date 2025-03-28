import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="color-on-moods"
export default class extends Controller {
  static targets = ["slider", "colorDisplay", "moodText", "emotji", "form"]

  connect() {
    this.updateColor(); // Met à jour la couleur à l'initialisation

  }

  updateColor() {
    const value = parseInt(this.sliderTarget.value);
    let color = '';
    let moodText = '';
    let emotjiSrc = "";

    switch(value) {
      case 1:
        color = 'rgb(66, 21, 163)'; // Bleu foncé
        moodText = "Très mal";
        emotjiSrc = "https://res.cloudinary.com/dbggxy9uy/image/upload/v1742735269/2026645_ce84cs.png";
        break;
      case 2:
        color = 'rgb(47, 120, 246)'; // Bleu clair
        moodText = "Mal";
        emotjiSrc = "https://res.cloudinary.com/dbggxy9uy/image/upload/v1742735269/2026645_ce84cs.png";
        break;
      case 3:
        color = 'rgb(210, 224, 251)'; // Bleu très clair
        moodText = "Un peu mal";
        emotjiSrc = "https://res.cloudinary.com/dbggxy9uy/image/upload/v1742735269/2026645_ce84cs.png";
        break;
      case 4:
        color = 'rgb(241, 243, 247)'; // Blanc
        moodText = "Neutre";
        emotjiSrc = "https://res.cloudinary.com/dbggxy9uy/image/upload/v1742735300/2026759_amrmxz.png";
        break;
      case 5:
        color = 'rgb(250, 255, 197)';
        moodText = "Un peu bien";
        emotjiSrc = "https://res.cloudinary.com/dbggxy9uy/image/upload/v1742735284/2026760_q61j0m.png";
        break;
      case 6:
        color = 'rgb(245, 255, 138)'; // Jaune pâle
        moodText =  "Bien";
        emotjiSrc = "https://res.cloudinary.com/dbggxy9uy/image/upload/v1742735284/2026760_q61j0m.png";
        break;
      case 7:
        color = 'rgb(244, 216, 3)'; // Jaune foncé
        moodText = "Très bien";
        emotjiSrc = "https://res.cloudinary.com/dbggxy9uy/image/upload/v1742735284/2026760_q61j0m.png";
        break;
    }

    this.colorDisplayTarget.style.backgroundColor = color;
    this.moodTextTarget.innerText = moodText;
    this.emotjiTarget.src = emotjiSrc;
  }
}
