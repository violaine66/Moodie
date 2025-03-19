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
