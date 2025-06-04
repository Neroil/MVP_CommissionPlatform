#import "@preview/basic-report:0.1.2": *

#show: it => basic-report(
  doc-category: "Cours de MVP",
  doc-title: "Rapport final - Plateforme de commissions d'art \n \n \"CoPla\"",
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

#set page(margin: (left: 2.5cm, right: 2.5cm))

// Modifier la taille du texte si souhaité
#set text(size: 10.5pt)

= Introduction

// ÉVALUATION - Critère 1 : Qualité de présentation de la problématique, projet et objectifs
// ✓ BIEN : Problématique claire avec double perspective (client/artiste)
// ✓ BIEN : Objectifs définis avec les 3 axes principaux
// ⚠️ ATTENTION : Définition du terme "commission" utile mais pourrait être plus tôt dans le document

Dans le contexte du cours de MVP (Minimum Viable Product), ce rapport présente le développement d'une plateforme web destinée à faciliter les relations clients/artistes dans le contexte de commissions d'oeuvres.

Dans ce document, j'utiliserai fréquemment le terme "commission" avec deux sens distincts :

*1.* Son sens usuel : un acteur perçoit une commission sous forme de montant fixe ou de pourcentage

*2.* Son sens dans le monde de l'art : le fait de commander une œuvre personnalisée à un artiste

== Problématique

La recherche d'artiste pour la création d'oeuvre personnalisée est difficile. Que ce soit pour une image de profil, une illustration de personnage ou tout autre projet, les clients manquent souvent d'outils pour découvrir facilement des artistes adaptés à leurs besoins, budget, temps, etc.

D'un autre côté, les artistes rencontrent des difficultés pour trouver des clients et gérer leurs commandes de manière professionnelle. Actuellement, beaucoup passent par des échanges informels sur des plateformes comme Discord ou X, avec des paiements souvent gérés via PayPal, ce qui peut manquer de transparence et de sécurité.

== Objectifs du projet

L'objectif est de créer une plateforme centralisée qui facilite :
- La mise en relation entre clients et artistes
- La gestion des échanges et des paiements
- L'organisation des commissions de manière plus fluide et professionnelle

Pour rendre cette application viable, différents mécanismes pourraient être mis en place comme par exemple une prise d'une commission (si possible moins que 4%) ou bien encore la mise en place d'un système d'abonnements.

= Membres de l'équipe

// ÉVALUATION - Critère 2 : Qualité présentation membres équipe, rôles et compétences
// ✓ BIEN : Compétences listées clairement
// ⚠️ ATTENTION : Projet individuel donc section courte, mais complète

Ce projet a été réalisé individuellement par moi-même, Edwin Häffner, étudiant en informatique logicielle à l'HEIG-VD.

*Compétences apportées :*
- Développement d'application web (Utilisation de framework t.q. Quarkus, notion de frontend avec React, etc. Gestion de base de donnée)
- Interface utilisateur et expérience utilisateur
- Gestion de projet
- Connaissance sur le sujet (Artiste hobbyiste)

= Recherche, choix et justification de l'idée

// ÉVALUATION - Critère 3 : Qualité recherche, choix et justification de l'idée
// ⚠️ ATTENTION : Section trop courte, manque d'analyse concurrentielle approfondie
// ⚠️ ATTENTION : Pas de comparaison détaillée avec Skeb, vGen, autres plateformes
// ⚠️ ATTENTION : Justification basée sur observation personnelle, manque de données

Le projet est de mettre à disposition une plateforme web qui permet de faire le lien entre _"commissionneur"_ et artiste pour faciliter cette communication. Cette plateforme doit aussi pouvoir facilement découvrir des artistes qui seraient disponibles qu'on aurait pas forcément trouvé sans son aide.

L'idée est née de l'observation personnelle des difficultés rencontrées dans l'écosystème actuel des commissions artistiques, où les transactions se font de manière dispersée entre plusieurs plateformes non spécialisées.

== Recherche des plateformes déjà existantes / concurrence

L'idée vient du constat qu'il existe dans mon cercle personnel une plateforme que beaucoup de personnes utilisent, Skeb. Cette plateforme est exactement le type de plateforme que je cherche mais elle a un très grand défaut : Seuls les artistes japonais peuvent s'y inscrire pour vendre leur art. 

Cette réstriction géographique viens du fait que le moyen de paiement utilisé joue avec le système bancaire japonais, donc quiquonque ne disposant pas d'un tel compte se trouve dans l'impossiblité d'utiliser cette plateforme. Cette restriction n'est pas présente pour les clients vu qu'on peut utiliser une carte de crédit pour effectuer des paiements sur cette plateforme. 

Ensuite un concurrent assez récent, VGen, existe mais j'ai trouvé que quasi personne ne l'utilisait dans mes cercles d'amis plus ou moins proche, donc le but de ce MVP est d'aussi comprendre pourquoi les gens n'utilisent pas une telle plateforme. 

= Identification du public cible et personae

// ÉVALUATION - Critère 4 : Qualité identification public cible avec énumération personae
// ✓ EXCELLENT : 3 personae très détaillées et réalistes
// ✓ BIEN : Frustrations et besoins bien définis
// ✓ BIEN : Diversité des profils (hobbyiste, passionnée, introverti)

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

== Démarche de conception

Lors de ce projet, j'ai essayé de faire un mockup en utilisant Penpot mais après quelques jours d'essai je n'ai pas réussi à avoir quelque chose de satisfaisant. Donc au final j'ai préferé formuler des besoins en texte et ensuite de les réaliser directement sur le frontend programmaticalement et aussi à l'aide d'LLMs en tout genre.

== Architecture générale et navigation

La plateforme se base d'une structure classique avec un header persistant contenant le logo de l'application, un bouton de recherche d'artistes, et les fonctionnalités de connexion/inscription. Lorsqu'on est connecté, on peut facilement et a tout temps accéder à la page des artistes et à son profil.

== Page d'accueil (Landing page)

La page principale du site constitue sa landing page avec un moyen de pouvoir rapidement comprendre ce que fait cette application. L'élément central est un bouton de changement de contexte permettant à l'utilisateur de s'identifier comme artiste ou client, changeant les explications liés à l'application selon si on est artiste ou client.

== Système de profils et gestion des disponibilités

Une page de profil permet de voir sa disponibilité, affichée clairement par un statut ouvert/fermé pour un artiste, et de consulter les différentes commissions dessinées ou commandées respectivement selon le type d'utilisateur. 

Sur cette page de profil, l'artiste peut éditer une carte de commission qui indique les prix et des exemples de ce qu'il veut dessiner. Le client peut effectuer une requête à l'artiste directement via cette carte, simplifiant le processus initial de contact.

== Découverte d'artistes et système de filtrage

Une page dédiée permet de voir tous les artistes avec leur style (grace à un système de tagging), leurs prix, et quelques exemples de leurs créations. Cette page intègre un système de filtrage par fourchette de prix, style artistique, et disponibilité. Une intégration possible avec les réseaux sociaux pour pouvoir facilement voir quels artistes un client pourrait déjà suivre sur une autre plateforme pour facilement voir ses disponibilités.

== Communication et gestion des flux

Un système de messagerie lié aux requêtes permet aux artistes et clients de communiquer et gérer le flux de commissions. Cette messagerie intégrée évite le passage obligé par Discord ou similaire.

== Dashboard artiste et organisation

Finalement, un gestionnaire pour les artistes de type kanban est directement intégré à l'application pour éviter d'utiliser plusieurs services différents. Ce tableau de bord organise les commissions en colonnes : nouvelles demandes, en cours (avec sous-étapes esquisse/ligne/couleur/ombrage), validation client, et terminées.

= Questionnaires et hypothèses à valider

// ÉVALUATION - Critère 6 : Qualité questionnaires et hypothèses à valider
// ❌ CRITIQUE : Section vide
// ❌ CRITIQUE : Pas d'hypothèses formulées avant entretiens
// ❌ CRITIQUE : Méthodologie de validation non présentée

Avant de mener les entretiens, j'avais formulé plusieurs hypothèses à valider. Mon public cible initial était les artistes hobbyistes et tous types de clients, mais je voulais affiner cette définition à travers les interviews.

La première hypothèse était que les artistes hobbyistes auraient besoin d'une plateforme centralisée pour gérer leurs commissions plus facilement. Je supposais qu'ils perdaient du temps à jongler entre Discord, Twitter et PayPal, et qu'une solution intégrée leur apporterait une réelle valeur ajoutée.

Du côté client, mon hypothèse était qu'il existe une demande pour une plateforme permettant de filtrer les artistes par prix et disponibilité. Je partais du principe que la recherche actuelle d'artistes sur les réseaux sociaux était frustrante et chronophage.

Concernant les plateformes existantes, je voulais comprendre pourquoi Skeb fonctionne si bien dans son écosystème japonais et récolter plus d'informations sur VGen, notamment pourquoi mon cercle étendu d'amis ne l'aient jamais mentionné / utilisé.

Une autre hypothèse importante était que l'opacité des prix constitue un frein majeur pour les clients. Je supposais que beaucoup abandonnent leurs recherches faute d'informations tarifaires claires, et que les artistes peinent à se positionner par manque de transparence du marché.

Finalement, je voulais valider si une nouvelle plateforme pourrait réellement apporter une solution, ou si les gens sont finalement satisfaits de l'écosystème actuel malgré ses défauts. Peut-être que la dispersion entre plusieurs outils ne pose pas tant de problèmes que ça en pratique?

Pour valider ces hypothèses, j'ai mené des entretiens d'environ 20-30 minutes avec différents profils d'artistes et de clients en suivant la méthodologie du `Mom Test` du mieux que je pouvais. J'ai aussi lancé une enquête quantitative via Google Forms pour obtenir des données chiffrées sur les habitudes et préférences des utilisateurs.

= Entretiens effectués avec le public cible

// ÉVALUATION - Critère 7 : Qualité entretiens effectués avec public cible
// ✓ EXCELLENT : 6 entretiens qualitatifs très détaillés
// ✓ EXCELLENT : Diversité des profils interviewés
// ✓ BIEN : Analyse fine des retours
// ✓ BIEN : Mention d'enquête quantitative (84 réponses)
// ⚠️ ATTENTION : Résultats quantitatifs non exploités

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

J'ai pu avoir un ratio de 75% (63 personnes) de clients et 25% d'artistes (21 personnes). Dans ces classifications, certains artistes sont aussi clients donc on obtient 73 clients finalement.

=== Coté artiste

Sur les 21 artistes ayant répondu, un peu plus de la moitié considèrent qu'ils dessinent plutôt beaucoup, et seulement 4 d'entre eux ne vendent pas de commissions. Cela me laisse donc 17 artistes qui vendent des commissions et sont des utilisateurs potentiels de l'application.

Parmi ces 17 artistes qui vendent des commissions, 47% vendent moins de 5 commissions par an et 35% vendent entre 5 et 10 commissions par an. Ces deux groupes combinés représentent 82% des artistes vendeurs, ce qui correspond bien à mon public cible d'artistes occasionnels ou à faible volume d'activité.

L'écrasante majorité utilise les réseaux sociaux et Discord pour trouver des clients, seulement trois d'entre eux utilisent des plateformes de commissions comme VGen ou Skeb. En question ouverte sur leurs méthodes pour attirer de nouveaux clients, les réponses les plus fréquentes incluent le bouche-à-oreille avec leurs amis et proches, ou l'alimentation régulière de leurs réseaux sociaux avec de nouvelles œuvres.

Concernant la non-utilisation des plateformes de commissions, les raisons les plus citées sont un désintérêt général, une certaine "flemmardise" ou le sentiment que l'effort n'en vaut pas la peine vu leur faible volume de commissions, et parfois une méconnaissance pure et simple de ces services.

Pour évaluer la viabilité financière d'une telle plateforme, j'ai analysé les revenus moyens par commission. Environ 12% des artistes gagnent moins de 20 USD par commission, 65% sont dans la fourchette 20-100 USD, et 23% gagnent plus de 100 USD par commission. Une large majorité gagne donc 20 USD ou plus par commission, ce qui signifie qu'une commission de 4% pourrait représenter presque 1 USD par transaction.

Concernant la gestion des prix, tous les artistes vendeurs utilisent un système de tarification par pièce (au contraire d'un tarif horaire), ce qui confirme l'importance d'un système de filtrage par prix pour les clients. Environ 30% ont exprimé une insatisfaction marquée quant à leur gestion actuelle des commissions, avec des frustrations récurrentes qui touchent même ceux qui se disent globalement satisfaits : difficultés à trouver des clients de façon consistante, problèmes pour se positionner au niveau des prix, et complexité du management des communications et révisions.

=== Côté client

Du côté client, les 73 répondants montrent des habitudes de consommation variables mais significatives. 11 personnes estimaient commander plus de 10 commissions par mois ce qui est très étonnant! 

Une écrasante majorité trouve leurs artistes via les réseaux sociaux, principalement Twitter, suivi de Discord. Fait particulièrement révélateur et presque choquant, 60% des répondants admettent laisser les algorithmes des réseaux sociaux dicter leurs choix d'artiste, ce qui illustre bien la nature passive et aléatoire de la recherche actuelle.

Environ 32% des clients ont déjà utilisé une plateforme de commission, et parmi eux, les retours sont globalement positifs. Ils mentionnent notamment la facilité d'utilisation et de trouver des artistes disponibles, la sécurité des paiements et la clarté du processus. Les critiques portent principalement sur le manque de suivi des travaux en cours sur certaines plateformes comme Skeb ou des problèmes de communication.

Concernant les motivations d'adoption d'une plateforme de commission quelques fonctionnalités ressortent très clairement. La facilité de trouver des artistes disponibles arrive en tête avec 58% des répondants, suivie de près par les notifications d'ouverture de commissions (51%) et la possibilité de retrouver facilement des artistes déjà suivis (53%). Le filtrage par prix est aussi très importante pour 44% des clients. Ses chiffres deviennent encore plus élevé si on retire les 22% qui ont indiqué déjà utiliser une telle plateforme!

= Analyse des retours et conclusions

Les interviews menées révèlent un écosystème où artistes et clients naviguent entre plusieurs plateformes sans solution vraiment satisfaisante. L'enquête quantitative confirme et amplifie ces observations avec des données concrètes sur 84 répondants.

== Révision du public cible initial

Du côté des artistes, on observe une grande disparité dans les volumes d'activité, allant de l'artiste occasionnel produisant 3 à 6 commissions par an jusqu'à celui en transition vers le full-time avec 2-3 œuvres hebdomadaires. Les données quantitatives révèlent que 82% des artistes vendeurs produisent moins de 10 commissions par an, confirmant la prédominance des artistes occasionnels.

Cette différence influence directement leur rapport aux plateformes spécialisées, les artistes occasionnels considèrent qu'une plateforme dédiée ne justifierait pas l'investissement en temps nécessaire, tandis que ceux plus actifs y voient un réel potentiel de professionnalisation. On trouve ici une contradiction avec mon hypothèse initiale où je pensais faire une plateforme principalement pour les artistes hobbyistes. Finalement, une telle plateforme serait-elle plus intéressante pour les artistes semi-pro voire professionnels ?

== Validation des frustrations identifiées

La gestion actuelle des commissions suit un schéma typique Discord-Twitter-PayPal que l'enquête quantitative confirme massivement : 95% des clients trouvent leurs artistes via les réseaux sociaux. Ce processus dispersé génère effectivement des frustrations réelles puisque 30% des artistes expriment une insatisfaction marquée avec leur système actuel de gestion.

L'opacité des prix se confirme comme un gros enjeu. Les données montrent que 65% des artistes facturent entre 20-100 USD par commission avec une tarification par pièce, mais les clients peinent à accéder à cette information facilement. Cette frustration se traduit dans les fonctionnalités les plus demandées : 44% des clients veulent un filtrage par prix.

== Passivité de la recherche actuelle

Un élément particulièrement frappant des données quantitatives est que 60% des clients admettent laisser les algorithmes des réseaux sociaux dicter leurs choix d'artiste. Cette dépendance aux algorithmes confirme le caractère aléatoire et passif de la recherche actuelle, validant le besoin d'outils de découverte plus structurés.

Du côté client, cette recherche passive engendre des pertes de temps considérables et explique pourquoi 58% des répondants placent "la facilité de trouver des artistes disponibles" comme grande priorité pour adopter une plateforme de commissions.

== Potentiel validé mais adoption incertaine

L'expérience Skeb illustre parfaitement les bénéfices d'une approche automatisée, avec des retours très positifs de la part du gros client interviewé. Les 36% de clients ayant déjà utilisé une plateforme de commissions confirment cette tendance avec des retours globalement positifs sur la facilité d'utilisation et la sécurité des paiements.

Cependant, un paradoxe émerge : malgré les frustrations exprimées et les fonctionnalités souhaitées clairement identifiées, seuls trois artistes sur 17 utilisent actuellement des plateformes spécialisées. L'interet d'une telle plateforme n'est peut-être pas assez grand pour effectuer un changement vers celle-ci.

== Le défi de la masse critique

Pour conclure, le point le plus complexe pour ce MVP, visible tant dans les interviews que dans les données quantitatives, est l'obtention d'une masse critique d'utilisateurs. On le voit très clairement : tout le monde utilise Twitter pour trouver des artistes alors que ce n'est même pas une plateforme d'art. C'est juste la plateforme la plus populaire, le statu quo.

Cette réalité questionne fondamentalement la viabilité d'une nouvelle plateforme : même avec des fonctionnalités supérieures et répondant aux besoins exprimés, comment convaincre un écosystème entier de migrer vers une solution alternative ? La fragmentation actuelle pourrait paradoxalement être préférée à l'effort de changement, malgré ses inefficacités reconnues.

= Choix technologiques et réalisation du MVP

// ÉVALUATION - Critère 9 : Qualité choix technologiques et réalisation MVP
// ❌ CRITIQUE : Section complètement vide
// ❌ CRITIQUE : Aucune justification des choix techniques
// ❌ CRITIQUE : MVP non décrit ni présenté

_[Section à compléter avec les choix techniques effectués, les technologies utilisées, et la description du MVP développé]_'
== Choix technologique

Avec mes compétences, j'ai rapidement choisi d'utiliser le framework Quarkus qui est parfait pour mon type d'application web. Etant plus à l'aise avec Java, Quarkus permet d'effectuer un backend dans ce langage et d'intégrer le frontend dans une même application. Un autre point fort de Quarkus est sa possibilité de faire du hot-reloading de l'entièreté de l'application, peu importe que les changements soient dans le backend ou frontend. J'ai aussi utilisé l'ORM Hibernate JPA qui permet de générer les éléments de la base de données de façon quasi transparente à partir d'objets Java annotés `@Entity`.

Pour le frontend, j'ai utilisé Vite + React qui s'intègre avec une extension Quarkus nommée Quinoa qui permet de lancer Vite et Quarkus en une seule commande et de faire le linkage entre les deux entités.

De plus, j'ai organisé ce projet en polyrepo : un repository pour la partie axée cours MVP (donc le rapport), et une partie axée site en lui-même qui est mon projet.

== Réalisation du MVP

J'ai commencé par établir un UML basique pour mettre en place le backend et les différentes entités de ma base de données, vu que le site est intrinsèquement stateful.

Ensuite j'ai du trouver un nom, j'ai choisi CoPla, dérivé simplement de #strong[Co]mmission #strong[Pla]tform

La première étape a été de setup les pages de login et register, étant donné que c'est un des éléments les plus importants et basique de l'application. J'ai établi une gestion d'utilisateurs basique avec les fonctionnalités d'inscription et de connexion sécurisées en utilisant Quarkus Security.

Ensuite, j'ai créé une page utilisateur basique que j'ai ensuite complétée avec la possibilité d'ajouter des informations liées aux commissions. J'ai mis en place deux types de profils distincts : le profil client et le profil artiste. Dans ma conception, l'artiste extend le client dans ma hiérarchie d'objets, permettant aux artistes d'également commander des œuvres.

Pour les artistes, ils peuvent indiquer les tags qui les représentent. Ils ont aussi accès à une carte de commissions avec différents éléments et prix. J'ai aussi ajouté un bouton permettant à l'artiste d'indiquer s'il est ouvert aux commissions ou non, répondant directement au besoin identifié lors des interviews concernant la visibilité de la disponibilité.

Le système vérifie automatiquement le type d'utilisateur et affiche les informations correspondantes selon qu'il s'agisse d'un artiste ou d'un client.

En me basant sur mes interviews, j'ai remarqué que l'intégration avec un réseau social était quasi-obligatoire vu l'usage massif de ces plateformes, j'ai ajouté un système de vérification via BlueSky. J'ai choisi BlueSky plutôt que Twitter/X car c'est une plateforme émergente qui gagne de plus en plus d'utilisateurs, alors que Twitter est un peu problématique actuellement... De plus, l'api de BlueSky, AT-Proto est gratuit à l'utilisation.

Le système n'est pas encore entièrement fonctionnel mais fonctionne partiellement, permettant une vérification d'identité qui renforce la confiance entre artistes et clients.
Il est possible aussi de vérifier si des artistes que l'ont suit sur BlueSky sont présent sur CoPla mais pour l'instant cette vérification se fait seulement à la vérification. J'ai eu du mal à le faire après coup.

=== Itérations sur l'interface

J'ai passé beaucoup de temps sur de nombreuses itérations du frontend avec l'aide d'LLMs pour obtenir quelque chose de visuellement attrayant. Bien que cela m'ait pris plus de temps que prévu, j'ai considéré que l'aspect visuel était crucial pour un MVP de ce type, qui doit aller plus loin qu'un simple prototype. N'ayant pas les compétences en design, j'ai largement utilisé les LLMs pour créer une interface fonctionnelle et esthétique.

Le MVP actuel propose donc une plateforme fonctionnelle permettant l'inscription d'artistes et de clients, la gestion des profils avec spécification des services et tarifs, un système de disponibilité, et une vérification sociale via BlueSky.

=== Ce qu'il manque

Par rapport à ma proposition initiale, il manque tout de même la gestion de messaging, de gallerie pour les artists, la gestion de commission via kanban intégré. J'ai décider de prioriser l'affichage des artistes et de la disponibilité ainsi que la géstion de réseau sociaux. 

== Déploiement sur Google Cloud

L'application étant une application web, j'ai dû la déployer sur un service cloud pour qu'elle soit accessible en permanence. J'ai choisi Google Cloud Platform principalement pour des raisons économiques car leur offre d'essai gratuit de 3 mois avec un crédit de 250 CHF était amplement suffisante pour la durée du projet.

=== Architecture de déploiement

J'ai opté pour une architecture containerisée utilisant Docker Compose sur une machine virtuelle Google Cloud. Mon docker-compose lance alors quatre containeur différents: 

Le conteneur PostgreSQL gère la base de données. J'ai choisi PostgreSQL car c'est un peu le best du best avec Quarkus et Hibernate JPA. Pour l'instant je perds toutes les données lors du redémarrage ce qui n'est pas trop grave, l'application n'étant pas complète dans ses features. Ensuite il y a le conteneur Quarkus qui héberge l'application elle-même. Le conteneur NGINX sert de reverse proxy et gère le routage entre HTTP et HTTPS. L'utilisation d'HTTPS est obligatoire car toute application gérant des comptes utilisateurs doit être un minimum sécurisée, ensuite, l'authentification OAuth d'AT-Proto refuse de fonctionner sur des sites non sécurisés donc je n'ai pas vraiment le choix!

Le quatrième conteneur, Watchtower, surveille DockerHub toutes les 5 minutes pour détecter de nouvelles versions de l'application. Cette surveillance automatique s'intègre avec ma pipeline CI/CD qui compile le projet Quarkus en image native et la pousse sur DockerHub à chaque commit sur la branche principale.


= Tests utilisateurs TODO: Réécrire domani

J'ai réussi à donner l'application à un petit groupe restreint de personnes qui constituent mon public cible, j'ai aussi recontacté l'un des artistes que j'ai interviewé pour avoir un retour sur ce qui est déjà disponible. Ces tests ont révélé des aspects positifs encourageants mais aussi plusieurs problèmes techniques et d'expérience utilisateur à résoudre.

== Les retours positifs

L'accueil général de la plateforme s'est révélé très positif. Les utilisateurs ont particulièrement apprécié la page d'accueil qui va "droit au but" et permet aux nouveaux utilisateurs de comprendre immédiatement l'objectif du site. L'interface générale a été jugée claire et simple, offrant un contraste efficace avec la complexité de plateformes comme Patreon où il est difficile de trouver les fonctionnalités principales.

Le système d'intégration BlueSky a suscité un intérêt particulier, notamment pour sa capacité à importer automatiquement les informations d'artistes et à suivre leurs ouvertures de commissions. Les utilisateurs y voient un potentiel important pour centraliser le suivi des artistes favoris.

L'aspect visuel de l'application, notamment le thème sombre avec les accents violets, a été bien reçu. Les utilisateurs ont noté que cette combinaison attire naturellement l'œil vers les éléments importants comme les cartes de commission et les bannières d'artistes.

Les fonctionnalités de filtrage par prix, styles artistiques et tags ont été identifiées comme particulièrement utiles pour rationaliser le processus de recherche d'artistes, répondant directement aux besoins exprimés lors des interviews initiales.

== Les retours négatifs

Plusieurs problèmes techniques majeurs ont été identifiés. Le plus critique concerne la sécurité : les tokens de session Quarkus peuvent être extraits et réutilisés pour générer de multiples sessions, ce qui constitue une vulnérabilité importante pour une application gérant des comptes utilisateurs.

Les problèmes d'interface sont nombreux : la bio utilisateur ne peut pas être modifiée, le bouton de création de requête de commission n'est pas fonctionnel, et certains noms d'utilisateur invalides (incluant du code JavaScript) cassent l'affichage des profils même si aucune injection XSS ne se produit.

L'affichage des emails sur les profils publics pose un problème de confidentialité majeur que plusieurs utilisateurs ont souligné. Les artistes devraient pouvoir contrôler la visibilité de ces informations personnelles.

L'utilisation de l'espace écran, particulièrement sur desktop, est problématique avec trop d'espaces vides sur les pages de profil d'artistes. Les utilisateurs suggèrent d'agrandir les bannières et cartes de commission pour mieux utiliser l'espace disponible.

Des bugs d'interface mobile ont été rapportés, notamment un bouton burger qui clignote et un arrière-plan dégradé qui change d'angle lors des transitions de page, créant un effet visuel désagréable.

== Conclusion des tests

Ces tests utilisateurs ont confirmé la pertinence du concept et de l'approche générale de CoPla. Les utilisateurs comprennent immédiatement la valeur ajoutée de la plateforme et apprécient sa simplicité comparée aux solutions existantes. L'intégration BlueSky est perçue comme innovante et utile.

Cependant, la phase de développement actuelle révèle que l'accent mis sur l'aspect visuel a peut-être été fait au détriment de la robustesse technique. Les problèmes de sécurité et les bugs fonctionnels doivent être prioritaires avant toute mise en production réelle.

Le plus encourageant reste que plusieurs utilisateurs ont exprimé leur intention d'utiliser la plateforme si le développement continue, validant ainsi l'intérêt du marché pour cette solution.

= Pérennité du projet

// ÉVALUATION - Critère 11 : Qualité pérennité projet (financier et technique)
// ❌ CRITIQUE : Section vide
// ❌ CRITIQUE : Pas d'analyse financière
// ❌ CRITIQUE : Pas d'analyse technique de faisabilité

_[Section à compléter avec l'analyse de la viabilité financière et technique du projet]_'

= Difficultés rencontrées et solutions

// ÉVALUATION - Critère 12 : Qualité présentation difficultés et solutions
// ❌ CRITIQUE : Section vide
// ❌ CRITIQUE : Pas de retour d'expérience sur le développement
// ❌ CRITIQUE : Pas d'analyse des obstacles rencontrés

_[Section à compléter avec les principales difficultés rencontrées durant le projet et les solutions apportées]_'

= Conclusion

// ÉVALUATION - Critère 13 : Qualité de la conclusion
// ❌ CRITIQUE : Section vide
// ❌ CRITIQUE : Pas de synthèse des résultats
// ❌ CRITIQUE : Pas de perspectives d'avenir

_[Section à compléter avec une rétrospective des résultats obtenus et les perspectives d'avenir du projet]_'

// ÉVALUATION GLOBALE - Critères 14, 15, 16 : Qualité rédaction, clarté, respect format
// ✓ BIEN : Rédaction claire et professionnelle
// ✓ BIEN : Structure logique et cohérente
// ⚠️ ATTENTION : Longueur actuelle insuffisante (beaucoup de sections vides)
// ⚠️ ATTENTION : Format respecté mais contenu incomplet


