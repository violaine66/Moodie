document.addEventListener('DOMContentLoaded', function () {
  const modal = document.getElementById('videoModal');

  // Vérification si l'élément modal existe
  if (!modal) {
    console.error("Le modal avec l'ID 'videoModal' n'a pas été trouvé !");
    return;
  }

  const iframe = document.getElementById('videoIframe');

  // Lorsque la modale est ouverte, ajoute l'URL de la vidéo à l'iframe
  modal.addEventListener('show.bs.modal', function (event) {
    const button = event.relatedTarget; // Le lien cliqué
    const videoUrl = button.getAttribute('data-video-url'); // Récupère l'URL de la vidéo
    iframe.src = videoUrl; // Assigne l'URL de la vidéo à l'iframe
  });

  // Lorsque la modale est fermée, réinitialise l'iframe pour stopper la vidéo
  modal.addEventListener('hidden.bs.modal', function () {
    iframe.src = ""; // Vide l'iframe pour stopper la vidéo
  });
});
