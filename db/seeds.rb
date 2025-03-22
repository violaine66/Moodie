# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
# Suppression des anciens posts
# Suppression des anciens posts et utilisateurs
JournalPost.destroy_all
Mood.destroy_all
User.destroy_all
Ressource.destroy_all

# Création d'un utilisateur de test
user = User.create!(
  email: "test@example.com",
  password: "password123",
  password_confirmation: "password123"
)

# Création de nouvelles entrées pour les 7 derniers jours avec un user_id valide
JournalPost.create!(
  date: Date.today - 6,
  content: "Aujourd’hui, je me sens super bien ! J’ai eu une super note en anglais et mes amis m’ont fait rire toute la journée. 😊💖",
  user: user
)

JournalPost.create!(
  date: Date.today - 5,
  content: "Un peu stressée pour l’examen de maths demain… J’espère que ça ira. 📚😰",
  user: user
)

JournalPost.create!(
  date: Date.today - 4,
  content: "Journée pluvieuse = humeur maussade… J’ai juste envie de rester sous ma couette et écouter de la musique triste. 🌧️🎶",
  user: user
)

JournalPost.create!(
  date: Date.today - 3,
  content: "Trop contente ! J’ai parlé à mon crush aujourd’hui, il m’a souri ! 😍💕",
  user: user
)

JournalPost.create!(
  date: Date.today - 2,
  content: "Je me sens un peu seule aujourd’hui… Peut-être que je réfléchis trop. 😔",
  user: user
)

JournalPost.create!(
  date: Date.today - 1,
  content: "Grosse dispute avec ma meilleure amie... J’espère qu’on pourra en parler demain. 😢💔",
  user: user
)

JournalPost.create!(
  date: Date.today,
  content: "On s’est réconciliées et on a mangé une glace ensemble ! Tout va mieux. 🍦💛",
  user: user
)

# Création de ressources
Ressource.create!(
  title: "Maison des Adolescents",
  description: "La Maison des Ados (MDA) est un dispositif de la Sauvegarde du Nord. Elle accueille 3 publics : - Les jeunes de 11 à 21 ans - Leurs parents et famille - Les professionnels. Pour toutes questions éducatives, sociales, juridiques et de santé.",
  url: "https://maisondesados-sdn.fr",
  category: "Pres de chez moi",
  adress: "1 Rue Saint-Génois, 59000 Lille",
  longitude: 3.068283,
  latitude: 50.635719
)

Ressource.create!(
  title: "Maison des ados",
  description: "La maison des adolescents (MDA) est destinée aux jeunes parisiens de 12 à 20 ans du nord de Paris. C’est un lieu d’accueil et de conseil pour tout ce qui concerne les jeunes en matière de santé, relations (famille, amis), sexualité, scolarité, ou mal être, consommations, etc.",
  url: "https://robertdebre.aphp.fr/maison-des-adolescents/",
  category: nil,
  adress: "8 avenue de la Porte du Pré Saint-Gervais, 75019 Paris",
  longitude: 2.401816,
  latitude: 48.879460
)

Ressource.create!(
  title: "Maison de l'Adolescent du 94 - Pôle ressource & santé",
  description: "La MDA 94 est un espace d'accueil et d'orientation pour les jeunes de 11 à 25 ans, ainsi qu'une plateforme dédiée aux professionnels de l'adolescence. Notre structure est ouverte à tous les jeunes du Val-de-Marne. La Maison de l'Ado se décline en 5 lieux : 4 Points Accueil et Écoute Jeunes, 1 pôle ressource & santé.",
  url: "https://www.maisondeladolescent94.org/",
  category: nil,
  adress: "8 Rue du Général Lacharrière, 94000 Créteil",
  longitude: 2.464201,
  latitude: 48.787696
)
