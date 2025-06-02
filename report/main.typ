#import "@preview/basic-report:0.1.2": *

#show: it => basic-report(
  doc-category: "Cours de MVP",
  doc-title: "Rapport final - Plateforme de commissions artistiques",
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

Dans le contexte du cours de MVP (Minimum Viable Product), ce rapport présente le développement d'une plateforme web destinée à faciliter les commissions artistiques entre clients et artistes.

== Problématique

Il est difficile de trouver des artistes pour des commandes personnalisées. Que ce soit pour une image de profil, une illustration de personnage ou tout autre projet, les clients manquent souvent d'outils pour découvrir facilement des artistes adaptés à leurs besoins, budget, temps, etc.

D'un autre côté, les artistes rencontrent des difficultés pour trouver des clients et gérer leurs commandes de manière professionnelle. Actuellement, beaucoup passent par des échanges informels sur des plateformes comme Discord ou X, avec des paiements souvent gérés via PayPal, ce qui peut manquer de transparence et de sécurité.

== Objectifs du projet

L'objectif est de créer une plateforme centralisée qui facilite :
- La mise en relation entre clients et artistes
- La gestion des échanges et des paiements
- L'organisation des commissions de manière plus fluide et professionnelle

Dans ce document, j'utiliserai fréquemment le terme "commission" avec deux sens distincts :
1. Son sens usuel : un acteur perçoit une commission sous forme de montant fixe ou de pourcentage
2. Son sens dans le monde de l'art : le fait de commander une œuvre personnalisée à un artiste

Pour rendre cette application viable, différents mécanismes pourraient être mis en place comme par exemple une prise d'une commission (si possible moins que 4%) ou bien encore la mise en place d'un système d'abonnements.

= Membres de l'équipe

Ce projet a été réalisé individuellement par Edwin Häffner, étudiant en informatique à l'HEIG-VD.

*Compétences apportées :*
- Développement web (HTML, CSS, JavaScript)
- Bases de données
- Interface utilisateur et expérience utilisateur
- Gestion de projet


= Recherche, choix et justification de l'idée

Le projet est de mettre à disposition une plateforme web qui permet de faire le lien entre _"commissionneur"_ et artiste pour faciliter cette communication. Cette plateforme doit aussi pouvoir facilement découvrir des artistes qui seraient disponibles qu'on aurait pas forcément trouvé sans son aide.

L'idée est née de l'observation personnelle des difficultés rencontrées dans l'écosystème actuel des commissions artistiques, où les transactions se font de manière dispersée entre plusieurs plateformes non spécialisées.

= Identification du public cible et personae

Mon public cible regroupe des adultes âgés de 18 à 50 ans, souhaitant soit commander des œuvres auprès d'artistes, soit proposer leurs services en tant qu'artistes indépendants.

La cible géographique de la plateforme est le marché occidental, comprenant l'Europe et les Amériques, où la culture de la commission d'œuvres artistiques est déjà bien ancrée.

== Les différentes personae

=== Émilie - L'artiste hobbyiste
Émilie, 29 ans, est une artiste hobbyiste qui travaille dans les ressources humaines. Durant son temps libre, elle aime dessiner, notamment des personnages humains et anthropomorphes dans un style fantasy. Depuis trois ans, elle propose ses services de commission en ligne.  

*Ses frustrations :*
- Elle peine à trouver une clientèle prête à payer un prix juste pour son travail.  
- Les échanges avec les clients manquent souvent de professionnalisme et de structure, rendant la gestion des commandes compliquée.  
- Elle doit jongler entre plusieurs plateformes (Discord, X, PayPal, Stripe) pour gérer ses commissions, ce qui est chronophage et peu pratique.  

*Ce qu'elle recherche :*
- Une *plateforme centralisée* où elle peut exposer son travail et attirer des clients intéressés.  
- Un *système de gestion des commandes* plus structuré et sécurisé.  
- Une *meilleure visibilité* pour toucher un public plus large.  

=== Ines - La cliente passionnée
Ines, 21 ans, est étudiante en informatique et passionnée par sa collection d'illustrations de ses personnages originaux (OC). Elle adore les mettre en scène dans différentes situations et consacre la majorité de son argent de poche aux commissions.  

*Ses frustrations :*
- Tous ses artistes favoris deviennent de plus en plus chers en gagnant en popularité. Elle cherche donc de nouveaux artistes proposant des commissions à moins de *50 CHF*, mais aucun site ne permet de filtrer facilement selon le prix
- Les prix ne sont pas toujours affichés clairement, ce qui l'oblige à contacter plusieurs artistes avant de trouver une offre qui lui convient
- Les artistes qu'elle aime ont souvent une file d'attente très longue, et elle aimerait pouvoir trouver plus rapidement des artistes disponibles

*Ce qu'elle recherche :*
- Une plateforme où elle peut *filtrer les artistes* par prix et style.  
- Un système où elle peut voir immédiatement quels artistes sont *disponibles pour une commission*.  
- Une *interface intuitive* qui évite d'avoir à chercher pendant des heures sur différentes plateformes.  

=== Elliott - L'artiste introverti
Elliott est un artiste de 45 ans. Il s'est spécialisé dans le concept art de personnages et d'environnement pour les campagnes DND (Donjon Et Dragon). Il est actuellement au chômage donc outre sa recherche de travaille, il dessine beaucoup. 

*Ses frustrations :*
- Elliott est très timide, il aime très peu la communications et veut la limiter au maximum syndical. Il avait vu qu'un site fonctionnait de cette manière (Skeb) mais que ce site acceptait seulement les artistes ayant un compte bancaire japonais...
- Malheureusement, faire de la pub pour son art n'est vraiment pas son fort, il reste dans son coin et espère que des personnes le contacte pour pouvoir les dessiner. 
- Il est dûr pour lui de trouver les prix d'autres artistes donc il ne sait pas trop comment évaluer ses propres oeuvres. Il a tendance à se sous-évaluer. 

*Ce qu'il recherche :*
- Un site lui permettant d'être découvert sans devoir faire ça pub sur des réseaux tel que Twitter et DeviantArt. 
- Une interface minimisant les interactions entre le client et l'artiste, pas de communication, pas de problème. (Il veut aussi éviter l'effet lié aux éditions de son art à la rallonge)
- Vu qu'il dessine beaucoup, il voudrait aussi que ce site lui permette de s'organiser. Plus besoin d'utiliser 2-3 sites différents pour faire cela.

= Wireframes/mockups des fonctionnalités clés

_[Section à compléter avec les wireframes et mockups développés]_'

= Questionnaires et hypothèses à valider

_[Section à compléter avec les questionnaires préparés et les hypothèses formulées avant les entretiens]_'


= Entretiens effectués avec le public cible

Dans cette section, je présente un résumé des différents entretiens que j'ai pu mener avec des membres du public cible.

== 31 Mars 2025 - Artiste occasionnel 

L'interviewé réalise 3 à 6 commissions par an, principalement pour des amis et connaissances. Il utilise surtout Discord pour gérer ses commandes, annonçant occasionnellement sa disponibilité sur Twitter et Fur Affinity. Son acquisition de clients repose essentiellement sur le bouche-à-oreille.  

Ensuite, l'interviewé apprécie le modèle centralisé de Skeb et vGen mais critique le manque de catégorisation efficace de vGen, qui semble trop axé sur le style anime. Il propose un système de sous-communautés similaire à Twitch pour mieux organiser les artistes par fandom ou style (furry, Pokémon, Digimon, etc.). Il souligne aussi la croissance de la communauté furry, qui n'est plus vraiment une niche mais plutôt une sous-culture à part entière, et son besoin d'une meilleure représentation sur ces plateformes.  

Un obstacle majeur pour les nouvelles plateformes est d'atteindre une masse critique d'utilisateurs, nécessitant presque un "exode" d'une plateforme existante, comme observé avec Twitter et BlueSky. Selon l'interviewé, un artiste réalisant au moins cinq commissions par mois tirerait un réel bénéfice d'une plateforme spécialisée. Malheureusement, vu son nombre de dessins par an assez faible, il ne pense pas s'embêter à utiliser ce genre de plateforme. La popularité de l'artiste joue également un rôle inversement proportionnel au besoin d'une plateforme spécialisée.

Il utilise PayPal malgré ses frais qu'il juge beacoup trop élevés, privilégiant la familiarité à des alternatives comme Stripe. Il absorbe lui-même les frais plutôt que de les répercuter sur ses clients, une pratique qu'il reconnaît non viable à grande échelle.  

Finalement, l'interviewé a indiqué apprécier les échanges personnels dans le processus de commission. Il souhaite néanmoins une meilleure organisation et estime qu'une plateforme idéale doit allier structure et messagerie efficace pour préserver l'aspect communautaire, ce qui semble être très important pour lui.

== 6 Avril 2025 - Artiste hobbyiste et à la fois client

L'interviewé, game designer de profession, dessine dans son temps libre et produit entre 12 et 15 commissions par an selon sa charge de travail IRL. Cette activité reste positionnée comme un hobby, son emploi principal lui offrant la liberté d'être sélectif dans ses clients. Il utilise Trello pour organiser sa file d'attente et acquiert principalement ses clients par bouche-à-oreille via Discord et Twitter.

En tant que client, il recherche des artistes de manière largement aléatoire lors de sa navigation sur les réseaux sociaux. Il reconnaît que cette méthode "n'est pas la meilleure façon de procéder" mais fonctionne sur un modèle d'achat plus ou moins impulsif. Sa principale difficulté réside dans l'obtention d'informations tarifaires claires sans devoir contacter directement chaque artiste, surtout que, selon lui, certains artistes proposent des prix disproportionnés par rapport à la qualité de leur travail.

Il privilégie les YCH (Your Character Here) pour ses achats car ils sont plus simples et abordables, mais exprime une frustration particulière concernant les commissions collaboratives où trouver un artiste qui plaise à plusieurs personnes simultanément s'avère complexe. Son expérience comprend aussi des incidents comme un artiste YCH populaire ayant oublié sa commande pendant trois mois malgré le paiement initial. Il exprime une préférence claire pour séparer les interactions professionnelles des réseaux sociaux, comparant cela à l'usage d'outils dédiés dans son travail de game designer.

Bien qu'il ne connaisse pas les plateformes spécialisées comme Skeb ou vGen, il s'est montré intéressé par leur potentiel pour professionnaliser les échanges. Cependant, son faible volume d'activité ne justifierait pas selon lui l'investissement en temps nécessaire pour maîtriser une nouvelle plateforme.

== 6 Avril 2025 - Artiste en transition vers le full-time

L'interviewé traverse actuellement une phase de transition plus ou moins délicate, abandonnant progressivement un emploi de 36 heures hebdomadaires pour se consacrer davantage à l'art pour des raisons de santé mentale comme physique. 

Sa routine de 2 à 3 heures de dessin quotidien produit entre une et trois commissions par semaines selon les périodes. Un chemin de commission typique est un contact via Twitter/X, ensuite ils continuent les messages généralement sur Discord car c'est un peu la plateforme defacto pour lui et ses clients. Le choix de ses clients se fait à la base du premier arrivé, premier servis!

Le processus de dessin est très collaboratif avec le client, impliquant des validations constantes à chaque étape majeure (esquisse, ligne, couleur, ombrage), révélant l'absence d'outils adaptés pour structurer ces échanges. Sa gestion administrative reste rudimentaire, reposant sur Excel pour le suivi des commandes. La majorité des commandes viennent de Twitter avec une petite partie de Bluesky et de Discord.

Les défis économiques qu'il rencontre illustrent les difficultés du marché artistique américain, notamment l'impact du coût de la vie élevé et de la concurrence internationale. Il trouve qu'utiliser ces réseaux sociaux pour obtenir du revenu est problèmatique, il dit subir directement les effets des algorithmes qui affecte sa visibilité (tant positivement que négativement). L'expérience d'un client ayant refusé de payer a motivé l'évolution de ses pratiques commerciales, exigeant désormais un paiement après validation de l'esquisse du dessin.

Sa plus grande crainte reste de se retrouver sans commissions à la fin de sa file d'attente. Bien qu'il connaisse Skeb ou bien VGen, il considère que son style artistique ne correspond pas aux œuvres typiquement présentées (style asiatique/anime) et serait intéressé par un équivalent occidental plus dans sa niche. Il expérimente aussi avec les YCH qui lui permettent de dessiner 2-3 fois plus rapidement et a récemment lancé un petit compte Patreon.

== 7 Avril 2025 - Gros client et utilisateur de Skeb

L'interviewé représente un segment de clients très actifs pour les artistes, ayant historiquement consacré 500 CHF mensuels aux commissions pendant qu'il restait chez ses parents, maintenant il s'est un peu calmé! Son utilisation de Skeb illustre parfaitement le potentiel des plateformes automatisées, exploitant notamment la fonctionnalité de connexion Twitter qui lui permet d'identifier immédiatement quels artistes acceptent actuellement des commissions. Cette feature résout directement la difficulité à connaître en temps réel la disponibilité des artistes et les recherches souvent infructueuses sur X ou d'autres site un peu plus spécialisé.

Selon lui, l'aspect économique de Skeb ressort comme un avantage majeur, citant l'exemple d'une commission complexe obtenue pour 15 euros via Skeb, là où un artiste occidental demanderait facilement 200 euros ou voir plus. Cette différence de prix s'explique par le processus automatisé sans révisions possibles, que l'interviewé accepte volontiers en échange de la réduction tarifaire.

Le processus automatisé, sans communication directe, présente selon lui un double avantage en réduisant les coûts pour l'artiste et en évitant les frustrations liées aux malentendus. Même si des fois cet avantage peut être un inconvénient, surtout lors de problème de traduction. Skeb utilise DeepL pour traduire les commandes en japonais pour ses artistes et des fois des détails grands comme petits sont "lost in translation", pouvant transformer une description complexe en simple "bonjour, j'adore votre style, j'aimerais un dessin" (exemple réel).

En dehors de Skeb, ses habitudes d'achat suivent le schéma classique via Twitter puis Discord, exprimant une frustration claire concernant la dépendance aux algorithmes des réseaux sociaux. Il développe également une stratégie d'achat particulière où il apprécie l'attente prolongée des commissions, considérant cela comme "planter une graine" qui apportera une surprise future agréable. Cette mentalité lui permet de tolérer des délais de plusieurs mois, voire années, sans grande frustration.

== 30 Mars 2025 - Échange sur les plateformes existantes

Cet entretien informel (entre deux game) a confirmé la réputation de vGen comme plateforme orientée anime, bien que des artistes de styles variés y soient présents après recherche ciblée. L'interviewé a souligné le problème de qualité variable des artistes, évoquant une esthétique "DeviantArt-esque" pour qualifier les travaux de moindre qualité. La question des systèmes de paiement s'est révélée centrale, critiquant sévèrement PayPal avec ses frais atteignant 15% incluant les conversions de devise, ce qui pousse certains artistes vers des alternatives comme Stripe et Revolut.

Le principal défi identifié concernant l'adoption de nouvelles plateformes reste la fragmentation de l'écosystème. Aucune plateforme comme SKeb ou VGen ne centralise l'ensemble des artistes désirés, obligeant les clients à multiplier les comptes et les recherches...

== Interview quantitative

En plus de ces interviews qualitatives, j'ai mené une enquête quantitative via Google Forms qui a recueilli 84 réponses entre le 28 avril et le 1er mai 2025.

_[TODO avec les informations utile au projet]_'

= Analyse des retours et conclusions

Les interviews menées révèlent un écosystème complexe où artistes et clients naviguent entre plusieurs plateformes sans solution vraiment satisfaisante. Du côté des artistes, on observe une grande disparité dans les volumes d'activité, allant de l'artiste occasionnel produisant 3 à 6 commissions par an jusqu'à celui en transition vers le full-time avec 2-3 œuvres hebdomadaires. 

Cette différence influence directement leur rapport aux plateformes spécialisées : les artistes occasionnels considèrent qu'une plateforme dédiée ne justifierait pas l'investissement en temps nécessaire, tandis que ceux plus actifs y voient un réel potentiel de professionnalisation. On trouve ici une contradiction avec mon constat personnel initial pour ce MVP où je pensais faire une plateforme pour les artistes hobbyistes. Finalement, une telle plateforme serait-elle plus intéressante pour les artistes semi-pro voire professionnels ? 

La gestion actuelle des commissions suit un schéma typique Discord-Twitter-PayPal. Ce schéma ne semble pas très satisfaisant, même s'il n'est pas dramatique. Ce qu'on peut en tirer, c'est que la gestion des commissions, du chat, du suivi des clients via Trello ou Excel devient une charge supplémentaire non négligeable pour l'artiste, surtout lorsqu'il produit un volume d'œuvres conséquent.

Du côté client, la recherche d'artistes relève souvent du hasard organisé, oscillant entre navigation aléatoire sur les réseaux sociaux et bouche-à-oreille entre amis sur Discord. On peut noter beaucoup de temps perdu pour les recherches lorsqu'aucune plateforme spécialisée n'est utilisée, ainsi qu'une certaine opacité des prix.

L'expérience Skeb illustre parfaitement les bénéfices d'une approche automatisée. L'intégration Twitter permettant d'identifier en temps réel les artistes disponibles résout une frustration récurrente sur la recherche, tandis que le processus sans révision, bien qu'imparfait, offre des tarifs attractifs en échange d'une prise de risque assumée. Cependant, les barrières linguistiques et culturelles limitent l'adoption plus large de cette plateforme.

Pour conclure, le point le plus complexe pour ce MVP, visible dans ces interviews, est l'obtention d'une masse critique d'utilisateurs. On le voit très clairement : tout le monde utilise Twitter pour trouver des artistes alors que ce n'est même pas une plateforme d'art. C'est juste la plateforme la plus populaire, le statu quo.


= Choix technologiques et réalisation du MVP

_[Section à compléter avec les choix techniques effectués, les technologies utilisées, et la description du MVP développé]_'

= Tests utilisateurs

_[Section à compléter avec les tests effectués auprès des utilisateurs cibles et leurs retours]_'

= Pérennité du projet

_[Section à compléter avec l'analyse de la viabilité financière et technique du projet]_'

= Difficultés rencontrées et solutions

_[Section à compléter avec les principales difficultés rencontrées durant le projet et les solutions apportées]_'

= Conclusion

_[Section à compléter avec une rétrospective des résultats obtenus et les perspectives d'avenir du projet]_


