import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="modal"
export default class extends Controller {
  static targets = ["modal", "iframe"]
  connect() {
  }
  open () {
    console.log("Ouverture du modal");
    const videoUrl = "https://www.youtube.com/embed/u-RAqt7p-3U";
    const modal = document.getElementById('videoModal');
    const iframe = document.getElementById('videoIframe');

    if (!modal) {
      console.error("Le modal avec l'ID 'videoModal' n'a pas été trouvé !");
      return;
    }
    console.log(iframe);
    iframe.src = videoUrl;
    modal.addEventListener('hidden.bs.modal', function () {
      iframe.src = "";
    });
  }
}
