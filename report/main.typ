
#import "@preview/basic-report:0.1.2": *

#show: it => basic-report(
  doc-category: "Cours de MVP",
  doc-title: "Rapport de cours",
  author: "Häffner Edwin",
  affiliation: "HEIG-VD",
  logo: image("assets/aerospace-engineering.png", width: 2cm),
  // <a href="https://www.flaticon.com/free-icons/aerospace" title="aerospace icons">Aerospace icons created by gravisio - Flaticon</a>
  language: "fr",
  it
)
#show heading.where(level: 3): it => [
  #pad(bottom: 0.3em)[#text(style: "italic", weight: "bold", size: 1em, fill: blue, it.body)]
]

= Introduction

Dans le contexte du cours de MVP, j'ai du mettre en place un minimal viable product, etc. 

= Concept du MVP

Dans ce document, j'utiliserai fréquemment le terme "commission" avec deux sens distincts :
1. Son sens usuel : un acteur perçoit une commission sous forme de montant fixe ou de pourcentage.
2. Son sens dans le monde de l'art : le fait de commander une œuvre personnalisée à un artiste.

== Le besoin 

Il est difficile de trouver des artistes pour des commandes personnalisées. Que ce soit pour une image de profil, une illustration de personnage ou tout autre projet, les clients manquent souvent d'outils pour découvrir facilement des artistes adaptés à leurs besoins, budget, temps, etc.

D'un autre côté, les artistes rencontrent des difficultés pour trouver des clients et gérer leurs commandes de manière professionnelle. Actuellement, beaucoup passent par des échanges informels sur des plateformes comme Discord ou X, avec des paiements souvent gérés via PayPal, ce qui peut manquer de transparence et de sécurité.

L'objectif est donc de créer une plateforme centralisée qui facilite :
- La mise en relation entre clients et artistes,
- La gestion des échanges et des paiements,
- L'organisation des commissions de manière plus fluide et professionnelle.


=== Le publique cible

- *Côté client (commissionner)* : Les particuliers cherchant à obtenir des œuvres digitales sur mesure de façon simple et sûre.
- *Côté artiste* : Les artistes professionnels ou amateurs souhaitant simplifier leur gestion des commandes et potentiellement élargir leur clientèle.

== Description du projet 

Le projet est alors de mettre à disposition une plateforme web qui permet de faire le lien entre _"commissionner"_ et artiste pour faciliter cette communications. Cette plateforme doit aussi pouvoir facilement découvrir des artistes qui seraient disponibles qu'on aurait pas forcément trouvé sans son aide. 

Pour rendre cette application viable, différent mécanismes pourrait être mis en place comme par exemple une prise d'une commissions (si possible moins que 4%) ou bien encore la mise en place d'un système d'abonnements.

= Mise en place des Personae

Mon public cible regroupe des adultes âgés de 18 à 50 ans, souhaitant soit commander des œuvres auprès d'artistes, soit proposer leurs services en tant qu'artistes indépendants.  

La cible géographique de la plateforme est le marché occidental, comprenant l'Europe et les Amériques, où la culture de la commission d'œuvres artistiques est déjà bien ancrée.  

== Les différentes personae
=== Émilie
Émilie, 29 ans, est une artiste hobbyiste qui travaille dans les ressources humaines. Durant son temps libre, elle aime dessiner, notamment des personnages humains et anthropomorphes dans un style fantasy. Depuis trois ans, elle propose ses services de commission en ligne.  

*Ses frustrations :*
- Elle peine à trouver une clientèle prête à payer un prix juste pour son travail.  
- Les échanges avec les clients manquent souvent de professionnalisme et de structure, rendant la gestion des commandes compliquée.  
- Elle doit jongler entre plusieurs plateformes (Discord, X, PayPal, Stripe) pour gérer ses commissions, ce qui est chronophage et peu pratique.  

*Ce qu'elle recherche :*
- Une *plateforme centralisée* où elle peut exposer son travail et attirer des clients intéressés.  
- Un *système de gestion des commandes* plus structuré et sécurisé.  
- Une *meilleure visibilité* pour toucher un public plus large.  

=== Ines 
Ines, 21 ans, est étudiante en informatique et passionnée par sa collection d'illustrations de ses personnages originaux (OC). Elle adore les mettre en scène dans différentes situations et consacre la majorité de son argent de poche aux commissions.  

*Ses frustrations :*
- Tous ses artistes favoris deviennent de plus en plus chers en gagnant en popularité. Elle cherche donc de nouveaux artistes proposant des commissions à moins de *50 CHF*, mais aucun site ne permet de filtrer facilement selon le prix. Elle doit alors passer des heures à parcourir X et DeviantArt.  
- Les prix ne sont pas toujours affichés clairement, ce qui l'oblige à contacter plusieurs artistes avant de trouver une offre qui lui convient.  
- Les artistes qu'elle aime ont souvent une file d'attente très longue, et elle aimerait pouvoir trouver plus rapidement des artistes disponibles.  

*Ce qu'elle recherche :*
- Une plateforme où elle peut *filtrer les artistes* par prix et style.  
- Un système où elle peut voir immédiatement quels artistes sont *disponibles pour une commission*.  
- Une *interface intuitive* qui évite d'avoir à chercher pendant des heures sur différentes plateformes.  

=== Elliott
Elliott est un artiste de 45 ans. Il s'est spécialisé dans le concept art de personnages et d'environnement pour les campagnes DND (Donjon Et Dragon). Il est actuellement au chômage donc outre sa recherche de travaille, il dessine beaucoup. 

*Ses frustrations :*
- Elliott est très timide, il aime très peu la communications et veut la limiter au maximum syndical. Il avait vu qu'un site fonctionnait de cette manière (Skeb) mais que ce site acceptait seulement les artistes ayant un compte bancaire japonais...
- Malheureusement, faire de la pub pour son art n'est vraiment pas son fort, il reste dans son coin et espère que des personnes le contacte pour pouvoir les dessiner. 
- Il est dûr pour lui de trouver les prix d'autres artistes donc il ne sait pas trop comment évaluer ses propres oeuvres. Il a tendance à se sous-évaluer. 

*Ce qu'il recherche :*
- Un site lui permettant d'être découvert sans devoir faire ça pub sur des réseaux tel que Twitter et DeviantArt. 
- Une interface minimisant les interactions entre le client et l'artiste, pas de communication, pas de problème. (Il veut aussi éviter l'effet lié aux éditions de son art à la rallonge)
- Vu qu'il dessine beaucoup, il voudrait aussi que ce site lui permette de s'organiser. Plus besoin d'utiliser 2-3 sites différents pour faire cela.

= Mise en place de la "Landing Page"

Dans le cadre du cours du 27.03.2025, il a fallu mettre en place une landing page du type "hello world"


= Les interviews 

Dans cette rubrique, je fais faire un petit court résumé des différents interview que j'ai pu avoir.

== 31 Mars 2025 - Artiste occasionnel 

=== Processus de Commission & Usage des Plateformes  
L'interviewé réalise 3 à 6 commissions par an, principalement pour des amis et connaissances. Il utilise surtout Discord pour gérer ses commandes, annonçant occasionnellement sa disponibilité sur Twitter et Fur Affinity. Son acquisition de clients repose essentiellement sur le bouche-à-oreille.  

=== Défis des Plateformes & Considérations  
L'interviewé apprécie le modèle centralisé de Skeb et vGen mais critique le manque de catégorisation efficace de vGen, qui semble trop axé sur le style anime. Il propose un système de sous-communautés similaire à Twitch pour mieux organiser les artistes. Il souligne aussi la croissance de la communauté furry, la communauté dont il fait partie, et son besoin d'une meilleure représentation sur ces plateformes.  

=== Freins à l'Adoption & Préférences de Paiement  
Un obstacle majeur pour les nouvelles plateformes est d'atteindre une masse critique d'utilisateurs. Selon l'interviewé, un artiste réalisant au moins cinq commissions par mois tirerait un réel bénéfice d'une plateforme spécialisée. Malheureusement, vu son nombre de dessin par ans assez faible, il ne pense pas s'embêter à utiliser ce genre de plateforme. Il utilise PayPal malgré ses frais élevés, privilégiant la familiarité à des alternatives comme Stripe.  

=== Connexion Humaine vs. Automatisation  
L'interviewé apprécie les échanges personnels dans le processus de commission tout en souhaitant une meilleure organisation. Il estime qu'une plateforme idéale doit allier structure et messagerie efficace pour préserver l'aspect communautaire. Ca à l'air d'être très important pour lui. 












