import { Controller } from "stimulus";

export default class extends Controller {
  static targets = ["slider", "moodText", "emoji"];

  // This method will be triggered when the slider value changes
  updateMoodDisplay() {
    const moodValue = this.sliderTarget.value;
    const moodTexts = [
      "Très mal", "Mal", "Plutôt mal", "Moyen", "Plutôt bien", "Bien", "Très bien"
    ];
    const moodEmojis = [
      "https://res.cloudinary.com/dbggxy9uy/image/upload/v1742735269/2026645_ce84cs.png",  // Très mal
      "https://res.cloudinary.com/dbggxy9uy/image/upload/v1742735269/2026645_ce84cs.png",  // Mal
      "https://res.cloudinary.com/dbggxy9uy/image/upload/v1742735269/2026645_ce84cs.png",  // Plutôt mal
      "https://res.cloudinary.com/dbggxy9uy/image/upload/v1742735300/2026759_amrmxz.png",  // Moyen
      "https://res.cloudinary.com/dbggxy9uy/image/upload/v1742735284/2026760_q61j0m.png",  // Plutôt bien
      "https://res.cloudinary.com/dbggxy9uy/image/upload/v1742735284/2026760_q61j0m.png",  // Bien
      "https://res.cloudinary.com/dbggxy9uy/image/upload/v1742735284/2026760_q61j0m.png"   // Très bien
    ];

    // Update the mood text and the emoji, but keep the white circle when there's no emoji
    this.moodTextTarget.textContent = moodTexts[moodValue - 1];

    const emojiUrl = moodEmojis[moodValue - 1];
    if (emojiUrl) {
      this.emojiTarget.src = emojiUrl;
      this.emojiTarget.classList.remove('empty'); // Remove 'empty' class if there's an emoji
    } else {
      this.emojiTarget.src = ""; // No emoji
      this.emojiTarget.classList.add('empty'); // Add 'empty' class for the circle
    }
  }
}
