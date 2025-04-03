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
puts "Suppression des anciens posts et utilisateurs..."
JournalPost.destroy_all
Mood.destroy_all
User.destroy_all
Ressource.destroy_all

# Création d'un utilisateur de test
puts "Création de l'utilisateur de test..."
user = User.create!(
  email: "test@example.com",
  password: "password123",
  password_confirmation: "password123"
)
puts "Utilisateur 'test@example.com' créé avec succès !"

# Création des JournalPosts pour les 7 derniers jours avec un user_id valide
puts "Création des JournalPosts pour les 7 derniers jours..."

JournalPost.create!(
  date: Date.today - 6,
  content: "Aujourd'hui, je me sens vraiment bien dans ma peau ! J’ai reçu une super note en anglais, et cela m’a donné un vrai coup de boost. Mes amis m'ont fait rire toute la journée avec leurs blagues, et j'ai eu des moments de complicité avec eux qui m'ont fait chaud au cœur. J’espère que cette bonne humeur va durer encore longtemps ! 😊💖",
  user: user
)
puts "JournalPost pour le 'jour -6' créé avec succès !"

JournalPost.create!(
  date: Date.today - 5,
  content: "Je suis un peu stressée pour l’examen de maths qui a lieu demain. J’ai révisé toute la journée, mais je n’arrive pas à m’enlever cette petite angoisse du ventre. J’espère vraiment que ça va bien se passer, mais c’est difficile de se calmer. En tout cas, je vais essayer de me détendre ce soir en écoutant un peu de musique relaxante. 📚😰",
  user: user
)
puts "JournalPost pour le 'jour -5' créé avec succès !"

JournalPost.create!(
  date: Date.today - 4,
  content: "Aujourd'hui, c’était une journée assez déprimante. Il pleut à verse et je n’ai pas vraiment envie de sortir de chez moi. L’ambiance est un peu morose, et je me sens un peu triste, comme si le ciel reflétait mon humeur. Je me suis blottie sous ma couette, en écoutant de la musique mélancolique, en espérant que demain serait un meilleur jour. 🌧️🎶",
  user: user
)
puts "JournalPost pour le 'jour -4' créé avec succès !"

JournalPost.create!(
  date: Date.today - 3,
  content: "Je suis tellement contente ! J’ai eu l’occasion de parler à mon crush aujourd'hui, et c’était super. Il m’a souri, et ce petit sourire a illuminé ma journée ! Je crois que j’ai un peu rougi, mais c’était trop mignon. C’est fou comme les petites choses peuvent rendre une journée tellement meilleure. 😍💕",
  user: user
)
puts "JournalPost pour le 'jour -3' créé avec succès !"

JournalPost.create!(
  date: Date.today - 2,
  content: "Je me sens un peu seule aujourd’hui, je n’arrive pas vraiment à savoir pourquoi. J’ai passé la journée à réfléchir, peut-être un peu trop d’ailleurs. Je me suis demandée si je n’étais pas en train de m’inventer des problèmes. J’espère que ce sentiment passera bientôt. 😔",
  user: user
)
puts "JournalPost pour le 'jour -2' créé avec succès !"

JournalPost.create!(
  date: Date.today - 1,
  content: "Aujourd’hui, j’ai eu une grosse dispute avec ma meilleure amie, et c’était vraiment difficile. On s’est mal comprises, et ça m’a fait du mal. J’espère qu’on pourra en parler demain, que tout va s’arranger. J’ai l’impression qu’il y a quelque chose de plus derrière cette dispute, mais je ne sais pas encore quoi. 😢💔",
  user: user
)
puts "JournalPost pour le 'jour -1' créé avec succès !"

JournalPost.create!(
  date: Date.today,
  content: "Enfin, des bonnes nouvelles ! Ma meilleure amie et moi, on s’est réconciliées aujourd’hui. C’était un moment très émouvant, on s’est parlé, et on a clarifié nos malentendus. Pour fêter ça, on a mangé une glace ensemble et rigolé comme avant. Tout est bien qui finit bien, et je me sens tellement mieux maintenant. 🍦💛",
  user: user
)
puts "JournalPost pour le 'jour d'aujourd'hui' créé avec succès !"


# Création de ressources
puts "Création des ressources..."

Ressource.create!(
  title: "La dépendance aux écrans : comment savoir si tu es accro ?",
  description: "Les écrans font partie de ta vie quotidienne, mais est-ce que tu te sens parfois dépendant de ton téléphone ou de la console de jeux ? Cet article t'explique les signes qui montrent que tu pourrais être accro, pourquoi c’est un problème et comment équilibrer ton temps entre les écrans et d'autres activités.",
  url: "#",
  category: "Bien-être numérique",
  adress: nil,
  longitude: nil,
  latitude: nil
)
puts "Ressource 'La dépendance aux écrans : comment savoir si tu es accro ?' créée avec succès !"

Ressource.create!(
  title: "S'accepter comme on est : Le corps des filles et les normes de beauté",
  description: "Tu te sens parfois mal dans ta peau à cause de ton image corporelle ? Cet article te parle des pressions sociales que subissent les filles pour ressembler à des standards de beauté. Apprends à t’accepter et à aimer ton corps tel qu’il est, avec des conseils pratiques pour retrouver ta confiance en toi.",
  url: "#",
  category: "Image de soi et confiance",
  adress: nil,
  longitude: nil,
  latitude: nil
)
puts "Ressource 'S'accepter comme on est : Le corps des filles et les normes de beauté' créée avec succès !"

Ressource.create!(
  title: "Le harcèlement scolaire : comment le reconnaître et s'en sortir",
  description: "Le harcèlement scolaire, c’est difficile à vivre. Si tu te sens mal à l’école à cause d’autres élèves, cet article t'explique comment reconnaître les signes du harcèlement, ce que tu peux faire pour te protéger et comment demander de l’aide à un adulte ou à un professionnel.",
  url: "#",
  category: "Soutien contre le harcèlement",
  adress: nil,
  longitude: nil,
  latitude: nil
)
puts "Ressource 'Le harcèlement scolaire : comment le reconnaître et s'en sortir' créée avec succès !"

Ressource.create!(
  title: "La Maison des Adolescents : Support et conseils",
  description: "La Maison des Ados (MDA) est un dispositif d’aide pour les jeunes. Elle propose un espace d’accueil pour les jeunes de 11 à 21 ans, avec un soutien éducatif, social, juridique et psychologique. C’est un endroit où tu peux trouver des réponses à tes questions.",
  url: "https://maisondesados-sdn.fr",
  category: "Près de chez moi",
  adress: "1 Rue Saint-Génois, 59000 Lille",
  longitude: 3.068283,
  latitude: 50.635719
)
puts "Ressource 'La Maison des Adolescents' créée avec succès !"

Ressource.create!(
  title: "Maison des Ados Paris : Un espace pour les jeunes",
  description: "La Maison des Adolescents de Paris est un lieu d’accueil et de soutien pour les jeunes parisiens, abordant des sujets comme la santé, les relations familiales, les préoccupations scolaires, et bien d’autres thèmes. Un endroit où tu peux poser toutes tes questions.",
  url: "https://robertdebre.aphp.fr/maison-des-adolescents/",
  category: nil,
  adress: "8 avenue de la Porte du Pré Saint-Gervais, 75019 Paris",
  longitude: 2.401816,
  latitude: 48.879460
)
puts "Ressource 'Maison des Ados Paris' créée avec succès !"

Ressource.create!(
  title: "L'Écoute Santé Jeunes : Un soutien pour ta santé mentale",
  description: "L'Écoute Santé Jeunes est un site de soutien psychologique dédié aux jeunes. Il propose des conseils pratiques pour ceux qui traversent des périodes difficiles, comme de l’anxiété ou de la dépression. Si tu as besoin d’aide, c’est un excellent point de départ.",
  url: "https://www.ecoute-sante-jeunes.org",
  category: "Écoute et soutien",
  adress: nil,
  longitude: nil,
  latitude: nil
)
puts "Ressource 'L'Écoute Santé Jeunes' créée avec succès !"

Ressource.create!(
  title: "SOS Suicide : Prévention et aide",
  description: "SOS Suicide Phénix est une organisation qui offre des ressources et un accompagnement pour les jeunes en difficulté, y compris ceux ayant des pensées suicidaires. Ce site propose des articles, des ressources d'aide et des moyens de contacter des professionnels.",
  url: "#",
  category: "Soutien et prévention",
  adress: nil,
  longitude: nil,
  latitude: nil
)
puts "Ressource 'SOS Suicide Phénix' créée avec succès !"

Ressource.create!(
  title: "Psycom - Ressources Santé Mentale pour les jeunes",
  description: "Psycom est un site qui propose des articles et des ressources concernant la santé mentale. Il permet aux jeunes de mieux comprendre leurs émotions et de trouver des moyens de soutien.",
  url: "https://www.psycom.org",
  category: "Articles et Informations",
  adress: nil,
  longitude: nil,
  latitude: nil
)
puts "Ressource 'Psycom - Ressources Santé Mentale' créée avec succès !"

puts "Toutes les ressources ont été créées avec succès !"
