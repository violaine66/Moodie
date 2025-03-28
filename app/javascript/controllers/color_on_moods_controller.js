import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="color-on-moods"
export default class extends Controller {
  static targets = ["slider", "colorDisplay", "moodText", "emotji", "form"]

  connect() {
    this.updateColor(); // Met à jour la couleur à l'initialisation

  }

  updateColor() {
    const value = parseInt(this.sliderTarget.value);

    let moodText = '';
    let emotjiSrc = "";

    switch(value) {
      case 1:

        moodText = "Très mal";
        emotjiSrc = "https://res.cloudinary.com/dbggxy9uy/image/upload/v1742735269/2026645_ce84cs.png";
        break;
      case 2:

        moodText = "Mal";
        emotjiSrc = "https://res.cloudinary.com/dbggxy9uy/image/upload/v1742735269/2026645_ce84cs.png";
        break;
      case 3:

        moodText = "Un peu mal";
        emotjiSrc = "https://res.cloudinary.com/dbggxy9uy/image/upload/v1742735269/2026645_ce84cs.png";
        break;
      case 4:

        moodText = "Neutre";
        emotjiSrc = "https://res.cloudinary.com/dbggxy9uy/image/upload/v1742735300/2026759_amrmxz.png";
        break;
      case 5:

        moodText = "Un peu bien";
        emotjiSrc = "https://res.cloudinary.com/dbggxy9uy/image/upload/v1742735284/2026760_q61j0m.png";
        break;
      case 6:

        moodText =  "Bien";
        emotjiSrc = "https://res.cloudinary.com/dbggxy9uy/image/upload/v1742735284/2026760_q61j0m.png";
        break;
      case 7:
        moodText = "Très bien";
        emotjiSrc = "https://res.cloudinary.com/dbggxy9uy/image/upload/v1742735284/2026760_q61j0m.png";
        break;
    }


    this.moodTextTarget.innerText = moodText;
    this.emotjiTarget.src = emotjiSrc;
  }
}
