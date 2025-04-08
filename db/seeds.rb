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

user = User.create!(
  email: "lou@app.fr",
  password: "loulou",
  password_confirmation: "loulou"
)
puts "Utilisateur 'lou@app.fr' créé avec succès !"

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


# Création des ressources
puts "Création des ressources..."

Ressource.create!(
  title: "Santé mentale : Comment en parler en toute décontraction ?",
  url: "https://www.santepsyjeunes.fr/j-ai-besoin-d-aide",
  category: "Soutien et accompagnement psychologique",
  adress: nil,
  longitude: nil,
  latitude: nil
)
puts "Ressource 'Santé mentale : Comment en parler en toute décontraction ?' créée avec succès !"

Ressource.create!(
  title: "La dépendance aux écrans : comment savoir si tu es accro ?",
  url: "#",
  category: "Bien-être numérique",
  adress: nil,
  longitude: nil,
  latitude: nil
)
puts "Ressource 'La dépendance aux écrans : comment savoir si tu es accro ?' créée avec succès !"

Ressource.create!(
  title: "S'accepter comme on est : Le corps des filles et les normes de beauté",
  url: "#",
  category: "Image de soi et confiance",
  adress: nil,
  longitude: nil,
  latitude: nil
)
puts "Ressource 'S'accepter comme on est : Le corps des filles et les normes de beauté' créée avec succès !"

Ressource.create!(
  title: "Le harcèlement scolaire : comment le reconnaître et s'en sortir",
  url: "#",
  category: "Soutien contre le harcèlement",
  adress: nil,
  longitude: nil,
  latitude: nil
)
puts "Ressource 'Le harcèlement scolaire : comment le reconnaître et s'en sortir' créée avec succès !"

Ressource.create!(
  title: "Gérer le stress avant un examen : astuces pour rester calme et concentré",
  url: "#",
  category: "Stress et gestion des émotions",
  adress: nil,
  longitude: nil,
  latitude: nil
)
puts "Ressource 'Gérer le stress avant un examen : astuces pour rester calme et concentré' créée avec succès !"

Ressource.create!(
  title: "Les réseaux sociaux et la santé mentale : comment préserver son bien-être en ligne ?",
  url: "#",
  category: "Bien-être numérique",
  adress: nil,
  longitude: nil,
  latitude: nil
)
puts "Ressource 'Les réseaux sociaux et la santé mentale : comment préserver son bien-être en ligne ?' créée avec succès !"

Ressource.create!(
  title: "Qui est qui ? Trouve la bonne personne à consulter pour ta santé mentale",
  url: "https://www.nightline.fr/kit-de-vie/qui-est-qui",
  category: "Orientation et soutien",
  adress: nil,
  longitude: nil,
  latitude: nil
)
puts "Ressource 'Qui est qui ? Trouve la bonne personne à consulter pour ta santé mentale' créée avec succès !"

Ressource.create!(
  title: "Les signes de la dépression chez les adolescents : quand demander de l'aide ?",
  url: "#",
  category: "Prévention et soutien psychologique",
  adress: nil,
  longitude: nil,
  latitude: nil
)
puts "Ressource 'Les signes de la dépression chez les adolescents : quand demander de l'aide ?' créée avec succès !"

Ressource.create!(
  title: "Prendre soin de son sommeil : pourquoi c'est essentiel pour la santé mentale ?",
  url: "#",
  category: "Sommeil et bien-être",
  adress: nil,
  longitude: nil,
  latitude: nil
)
puts "Ressource 'Prendre soin de son sommeil : pourquoi c'est essentiel pour la santé mentale ?' créée avec succès !"

Ressource.create!(
  title: "Comment parler de ses émotions sans honte ?",
  url: "#",
  category: "Communication et expression des émotions",
  adress: nil,
  longitude: nil,
  latitude: nil
)
puts "Ressource 'Comment parler de ses émotions sans honte ?' créée avec succès !"

Ressource.create!(
  title: "Les troubles alimentaires : comprendre les signes et se soutenir mutuellement",
  url: "#",
  category: "Image de soi et confiance",
  adress: nil,
  longitude: nil,
  latitude: nil
)
puts "Ressource 'Les troubles alimentaires : comprendre les signes et se soutenir mutuellement' créée avec succès !"

Ressource.create!(
  title: "La solitude et l'isolement social : conseils pour rester connecté(e) avec les autres",
  url: "#",
  category: "Soutien social et prévention de l'isolement",
  adress: nil,
  longitude: nil,
  latitude: nil
)
puts "Ressource 'La solitude et l'isolement social : conseils pour rester connecté(e) avec les autres' créée avec succès !"

Ressource.create!(
  title: "L'impact de l'anxiété sociale : comment surmonter la peur du jugement ?",
  url: "#",
  category: "Gestion de l'anxiété",
  adress: nil,
  longitude: nil,
  latitude: nil
)
puts "Ressource 'L'impact de l'anxiété sociale : comment surmonter la peur du jugement ?' créée avec succès !"

Ressource.create!(
  title: "Vivre une rupture amoureuse : comment se reconstruire après la fin d'une relation ?",
  url: "#",
  category: "Relations et bien-être émotionnel",
  adress: nil,
  longitude: nil,
  latitude: nil
)
puts "Ressource 'Vivre une rupture amoureuse : comment se reconstruire après la fin d'une relation ?' créée avec succès !"

Ressource.create!(
  title: "Le deuil chez les jeunes : comprendre et traverser la perte d'un être cher",
  url: "#",
  category: "Soutien psychologique et deuil",
  adress: nil,
  longitude: nil,
  latitude: nil
)
puts "Ressource 'Le deuil chez les jeunes : comprendre et traverser la perte d'un être cher' créée avec succès !"

Ressource.create!(
  title: "Le stress des examens : comment mieux gérer la pression et réussir sereinement ?",
  url: "#",
  category: "Stress et gestion des émotions",
  adress: nil,
  longitude: nil,
  latitude: nil
)
puts "Ressource 'Le stress des examens : comment mieux gérer la pression et réussir sereinement ?' créée avec succès !"

Ressource.create!(
  title: "Santé PsyJeunes : Un site d'aide pour la santé mentale des jeunes",
  url: "https://www.santepsyjeunes.fr",
  category: "Soutien psychologique pour les jeunes",
  adress: nil,
  longitude: nil,
  latitude: nil
)
puts "Ressource 'Santé PsyJeunes : Un site d'aide pour la santé mentale des jeunes' créée avec succès !"

Ressource.create!(
  title: "Le déclic pour consulter un psy : comment savoir qu'il est temps de demander de l'aide ?",
  url: "#",
  category: "Soutien psychologique et conseils pratiques",
  adress: nil,
  longitude: nil,
  latitude: nil
)
puts "Ressource 'Le déclic pour consulter un psy : comment savoir qu'il est temps de demander de l'aide ?' créée avec succès !"

Ressource.create!(
  title: "Vaincre la peur de consulter : comment franchir le premier pas vers une meilleure santé mentale ?",
  url: "#",
  category: "Soutien psychologique et conseils pratiques",
  adress: nil,
  longitude: nil,
  latitude: nil
)
puts "Ressource 'Vaincre la peur de consulter : comment franchir le premier pas vers une meilleure santé mentale ?' créée avec succès !"

Ressource.create!(
  title: "Briser le silence : pourquoi il est essentiel de parler de ses difficultés psychologiques ?",
  url: "#",
  category: "Déstigmatisation et soutien social",
  adress: nil,
  longitude: nil,
  latitude: nil
)
puts "Ressource 'Briser le silence : pourquoi il est essentiel de parler de ses difficultés psychologiques ?' créée avec succès !"

Ressource.create!(
  title: "Comment le soutien psychologique peut améliorer ta vie : témoignages et conseils pour commencer",
  url: "#",
  category: "Témoignages et informations pratiques",
  adress: nil,
  longitude: nil,
  latitude: nil
)
puts "Ressource 'Comment le soutien psychologique peut améliorer ta vie : témoignages et conseils pour commencer' créée avec succès !"

# Ressources Près de chez moi
puts "Création des ressources 'Près de chez moi'..."

Ressource.create!(
  title: "La Maison des Adolescents : Support et conseils",
  description: "La Maison des Ados (MDA) est un dispositif d’aide pour les jeunes. Elle propose un espace d’accueil pour les jeunes de 11 à 21 ans, avec un soutien éducatif, social, juridique et psychologique. C’est un endroit où tu peux trouver des réponses à tes questions.",
  url: "https://maisondesados-sdn.fr",
  category: "Près de chez moi",
  adress: nil,
  longitude: nil,
  latitude: nil
)
puts "Ressource 'La Maison des Adolescents : Support et conseils' créée avec succès !"

Ressource.create!(
  title: "EPSM - Centre Médico Psychologique Lille Nord (Secteur infanto-juvénile)",
  description: "Le CMP de Lille Nord propose des consultations de bilan et de suivi, avec des médecins pédopsychiatres et divers professionnels. Il offre des soins individuels (psychothérapie, psychomotricité, orthophonie), des thérapies familiales, ainsi que des ateliers thérapeutiques pour les enfants et leurs parents.",
  url: "https://www.santepsyjeunes.fr",
  category: "Près de chez moi",
  adress: nil,
  longitude: nil,
  latitude: nil
)
puts "Ressource 'EPSM - Centre Médico Psychologique Lille Nord (Secteur infanto-juvénile)' créée avec succès !"

Ressource.create!(
  title: "Spiritek : Soutien pour jeunes confrontés à une addiction",
  description: "Spiritek est une structure dédiée aux jeunes confrontés à une addiction avec ou sans substance. Elle propose des consultations spécialisées pour aider à surmonter les difficultés liées à l'usage de substances ou à d'autres formes d'addiction.",
  url: "http://www.spiritek-asso.com/",
  category: "Près de chez moi",
  adress: nil,
  longitude: nil,
  latitude: nil
)
puts "Ressource 'Spiritek : Soutien pour jeunes confrontés à une addiction' créée avec succès !"

Ressource.create!(
  title: "Cedragir (PAEJ) : Accueil et écoute pour les jeunes",
  description: "Cedragir (PAEJ) propose un espace d'écoute pour les jeunes, afin de les accompagner dans leurs difficultés personnelles, sociales, scolaires ou familiales. L'accès est facilité par les transports en commun (Métro ligne A et tram) et un parking réservé au public.",
  url: "https://www.arpade.org/point-ecoute/",
  category: "Près de chez moi",
  adress: nil,
  longitude: nil,
  latitude: nil
)
puts "Ressource 'Cedragir (PAEJ) : Accueil et écoute pour les jeunes' créée avec succès !"

Ressource.create!(
  title: "CROUS Lille Nord-Pas-de-Calais : Happsy Hours – Consultations psychologiques gratuites pour les étudiants",
  description: "Le CROUS Lille Nord-Pas-de-Calais propose des consultations psychologiques gratuites lors des Happsy Hours. Ces consultations individuelles avec un psychologue sont offertes aux étudiants résidents du CROUS Lille Nord-Pas-de-Calais.",
  url: "https://www.crous-lille.fr",
  category: "Près de chez moi",
  adress: nil,
  longitude: nil,
  latitude: nil
)
puts "Ressource 'CROUS Lille Nord-Pas-de-Calais : Happsy Hours – Consultations psychologiques gratuites pour les étudiants' créée avec succès !"
