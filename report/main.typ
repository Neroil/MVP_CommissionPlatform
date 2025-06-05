#import "@preview/basic-report:0.1.2": *

#show: it => basic-report(
  doc-category: "Cours de MVP",
  doc-title: [
    Rapport final - Plateforme de commissions d'art 
    
    #align(center)[#text(
      size: 2em,
      weight: "black",
      fill: gradient.linear(
        angle: 45deg,
        (rgb("8B5CF6"), 0%),    
        (rgb("6366F1"), 50%),    
        (rgb("3B82F6"), 100%)  
      )
    )[CoPla]]
  ],
  author: "Häffner Edwin",
  affiliation: "HEIG-VD",
  logo: image("assets/aerospace-engineering.png", width: 2cm),
  // Source: Aerospace icons created by gravisio - Flaticon
  language: "fr",
  it
)


#show heading.where(level: 3): it => [
  #pad(bottom: 0.3em)[#text(style: "italic", weight: "bold", size: 1em, fill: blue, it.body)]
]

#set page(margin: (left: 2.5cm, right: 2.5cm, top: 3cm, bottom:2cm))

#set text(size: 10.5pt)

= Introduction

Dans le contexte du cours de MVP (Minimum Viable Product), ce rapport présente le développement d'une plateforme web destinée à faciliter les relations clients/artistes dans le contexte de commissions d'œuvres.

Dans ce document, j'utiliserai fréquemment le terme "commission" avec deux sens distincts :
*Son sens usuel :* un acteur perçoit une commission sous forme de montant fixe ou de pourcentage. *Son sens dans le monde de l'art :* le fait de commander une œuvre personnalisée à un artiste.

Des LLMs (notamment Claude et Gemini) ont été utilisés pour aider à la reformulation des différents éléments du rapport.

== Problématique

La recherche d'artistes pour la création d'œuvres personnalisées est difficile. Que ce soit pour une image de profil, une illustration de personnage ou tout autre projet, les clients manquent souvent d'outils pour découvrir facilement des artistes adaptés à leurs besoins, budget, temps, etc.

D'un autre côté, les artistes rencontrent des difficultés pour trouver des clients et gérer leurs commandes de manière professionnelle. Actuellement, beaucoup passent par des échanges informels sur des plateformes comme Discord ou Twitter/X, avec des paiements souvent gérés via PayPal, ce qui peut manquer de transparence et de sécurité.

== Objectifs du projet

L'objectif est de créer une plateforme centralisée qui facilite :
- La mise en relation entre clients et artistes
- La gestion des échanges et des paiements
- L'organisation des commissions de manière plus fluide et professionnelle

Pour rendre cette application viable, différents mécanismes pourraient être mis en place comme par exemple prendre une commission (si possible moins de 4%) ou bien encore mettre en place un système d'abonnements.

= Membres de l'équipe

Ce projet a été réalisé individuellement par moi-même, Edwin Häffner, étudiant en informatique logicielle à l'HEIG-VD.

*Compétences apportées :*
- Développement d'applications web (utilisation de frameworks tel que Quarkus, notions de frontend avec React, etc. Gestion de base de données)
- Interface utilisateur et expérience utilisateur
- Gestion de projet
- Connaissance sur le sujet (Artiste hobbyiste)

= Recherche, choix et justification de l'idée

Le projet consiste à mettre à disposition une plateforme web qui permet de faire le lien entre _"commissionneur"_ et artiste pour faciliter cette communication. Cette plateforme doit aussi permettre de découvrir facilement des artistes disponibles qu'on n'aurait pas forcément trouvés sans son aide.

L'idée est née de l'observation personnelle des difficultés rencontrées dans l'écosystème actuel des commissions artistiques, où les transactions se font de manière dispersée entre plusieurs plateformes non spécialisées.

== Recherche des plateformes déjà existantes / concurrence

Dans mon cercle personnel, j'ai constaté qu'il existe une plateforme spécialisée que beaucoup de personnes utilisent, Skeb. Cette plateforme est exactement le type de plateforme que je cherche mais elle a un très grand défaut : Seuls les artistes japonais peuvent s'y inscrire pour vendre leur art. Donc c'est de la que vient l'idée de faire ma propre plateforme pour pallier à ce manque.

Cette restriction géographique vient du fait que le moyen de paiement utilisé fonctionne avec le système bancaire japonais, donc quiconque ne disposant pas d'un tel compte se trouve dans l'impossibilité d'utiliser cette plateforme. Cette restriction n'est pas présente pour les clients vu qu'on peut utiliser une carte de crédit pour effectuer des paiements sur cette plateforme. 

Ensuite un concurrent assez récent, VGen, existe mais j'ai trouvé que quasi personne ne l'utilisait dans mes cercles d'amis plus ou moins proches, donc le but de ce MVP est aussi de comprendre pourquoi les gens n'utilisent pas une telle plateforme. 

= Identification du public cible et personae

Mon public cible regroupe des adultes âgés de 18 à 50 ans, souhaitant soit commander des œuvres auprès d'artistes, soit proposer leurs services en tant qu'artistes indépendants.

La cible géographique de la plateforme est le marché occidental, comprenant l'Europe et les Amériques, où la culture de la commission d'œuvres artistiques est déjà bien ancrée.

== Les différents personas

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

=== Inès - La cliente passionnée
Inès, 21 ans, est étudiante en informatique et passionnée par sa collection d'illustrations de ses personnages originaux (OC). Elle adore les mettre en scène dans différentes situations et consacre la majorité de son argent de poche aux commissions.  

*Ses frustrations :*
- Tous ses artistes favoris deviennent de plus en plus chers en gagnant en popularité. Elle cherche donc de nouveaux artistes proposant des commissions à moins de *50 CHF*, mais aucun site ne permet de filtrer facilement selon le prix
- Les prix ne sont pas toujours affichés clairement, ce qui l'oblige à contacter plusieurs artistes avant de trouver une offre qui lui convient
- Les artistes qu'elle aime ont souvent une file d'attente très longue, et elle aimerait pouvoir trouver plus rapidement des artistes disponibles

*Ce qu'elle recherche :*
- Une plateforme où elle peut *filtrer les artistes* par prix et style.  
- Un système où elle peut voir immédiatement quels artistes sont *disponibles pour une commission*.  
- Une *interface intuitive* qui évite d'avoir à chercher pendant des heures sur différentes plateformes.  

=== Elliott - L'artiste introverti
Elliott est un artiste de 45 ans. Il s'est spécialisé dans le concept art de personnages et d'environnement pour les campagnes DND (Donjon Et Dragon). Il est actuellement au chômage donc outre sa recherche de travail, il dessine beaucoup. 

*Ses frustrations :*
- Elliott est très timide, il aime très peu la communication et veut la limiter au maximum. Il avait vu qu'un site fonctionnait de cette manière (Skeb) mais que ce site acceptait seulement les artistes ayant un compte bancaire japonais...
- Malheureusement, faire de la pub pour son art n'est vraiment pas son fort, il reste dans son coin et espère que des personnes le contactent pour pouvoir les dessiner.
- Il lui est dur de trouver les prix d'autres artistes donc il ne sait pas trop comment évaluer ses propres œuvres. Il a tendance à se sous-évaluer.

*Ce qu'il recherche :*
- Un site lui permettant d'être découvert sans devoir faire sa pub sur des réseaux tels que Twitter et DeviantArt. 
- Une interface minimisant les interactions entre le client et l'artiste, pas de communication, pas de problème. (Il veut aussi éviter l'effet lié aux éditions de son art à la rallonge)
- Vu qu'il dessine beaucoup, il voudrait aussi que ce site lui permette de s'organiser. Plus besoin d'utiliser 2-3 sites différents pour faire cela.

= Wireframes/mockups des fonctionnalités clés

== Démarche de conception

Lors de ce projet, j'ai essayé de faire un mockup en utilisant Penpot mais après quelques jours d'essai je n'ai pas réussi à avoir quelque chose de satisfaisant. Donc au final j'ai préféré formuler des besoins en texte et ensuite les réaliser directement sur le frontend programmatiquement et aussi à l'aide d'LLMs en tout genre.

== Architecture générale et navigation

La plateforme se base sur une structure classique avec un header persistant contenant le logo de l'application, un bouton de recherche d'artistes, et les fonctionnalités de connexion/inscription. Lorsqu'on est connecté, on peut facilement et à tout moment accéder à la page des artistes et à son profil.

== Page d'accueil (Landing page)

La page principale du site constitue sa landing page avec un moyen de pouvoir rapidement comprendre ce que fait cette application. L'élément central est un bouton de changement de contexte permettant à l'utilisateur de s'identifier comme artiste ou client, changeant les explications liées à l'application selon le résultat voulu à l'utilisation de cette plateforme.

== Système de profils et gestion des disponibilités

Une page de profil permet de voir sa disponibilité, affichée clairement par un statut ouvert/fermé pour un artiste, et de consulter les différentes commissions dessinées ou commandées respectivement selon le type d'utilisateur. 

Sur cette page de profil, l'artiste peut éditer une carte de commission qui indique les prix et des exemples de ce qu'il peut dessiner. Le client peut effectuer une requête à l'artiste directement via cette carte, simplifiant le processus initial de contact.

== Découverte d'artistes et système de filtrage

Une page dédiée permet de voir tous les artistes avec leur style (grâce à un système de tagging), leurs prix, et quelques exemples de leurs créations. Cette page intègre un système de filtrage par fourchette de prix, style artistique, et disponibilité. Une intégration possible avec les réseaux sociaux pour pouvoir facilement voir quels artistes un client pourrait déjà suivre sur une autre plateforme pour facilement voir ses disponibilités.

== Communication et gestion des flux

Un système de messagerie lié aux requêtes permet aux artistes et clients de communiquer et gérer le flux de commissions. Cette messagerie intégrée évite le passage obligé par Discord ou similaire.

== Dashboard artiste et organisation

Finalement, un gestionnaire pour les artistes de type kanban est directement intégré à l'application pour éviter d'utiliser plusieurs services différents. Ce tableau de bord organise les commissions en colonnes : nouvelles demandes, en cours (avec sous-étapes esquisse/ligne/couleur/ombrage), validation client, et terminées.

= Questionnaires et hypothèses à valider

Avant de mener les entretiens, j'avais formulé plusieurs hypothèses à valider. Mon public cible initial était les artistes hobbyistes et tous types de clients, mais je voulais affiner cette définition à travers les interviews.

La première hypothèse était que les artistes hobbyistes auraient besoin d'une plateforme centralisée pour gérer leurs commissions plus facilement. Je supposais qu'ils perdaient du temps à jongler entre Discord, Twitter et PayPal, et qu'une solution intégrée leur apporterait une réelle valeur ajoutée.

Du côté client, mon hypothèse était qu'il existe une demande pour une plateforme permettant de filtrer les artistes par prix et disponibilité. Je partais du principe que la recherche actuelle d'artistes sur les réseaux sociaux était frustrante et chronophage.

Concernant les plateformes existantes, je voulais comprendre pourquoi Skeb fonctionne si bien dans son écosystème japonais et récolter plus d'informations sur VGen, notamment pourquoi mon cercle étendu d'amis ne l'avait jamais mentionné / utilisé.

Une autre hypothèse importante était que l'opacité des prix constitue un frein majeur pour les clients. Je supposais que beaucoup abandonnent leurs recherches faute d'informations tarifaires claires, et que les artistes peinent à se positionner par manque de transparence du marché.

Finalement, je voulais valider si une nouvelle plateforme pourrait réellement apporter une solution, ou si les gens sont finalement satisfaits de l'écosystème actuel malgré ses défauts. Peut-être que la dispersion entre plusieurs outils ne pose pas tant de problèmes que ça en pratique?

Pour valider ces hypothèses, j'ai mené des entretiens d'environ 20-30 minutes avec différents profils d'artistes et de clients en suivant la méthodologie du `Mom Test` du mieux que je pouvais. J'ai aussi lancé une enquête quantitative via Google Forms pour obtenir des données chiffrées sur les habitudes et préférences des utilisateurs.

= Entretiens effectués avec le public cible

== Interviews qualitatives

J'ai mené 5 interviews approfondies entre le 30 mars et le 7 avril 2025 avec différents profils d'utilisateurs représentatifs de mon public cible. Ces entretiens d'environ 20-30 minutes chacun ont suivi la méthodologie du Mom Test pour éviter les biais de confirmation. La totalité des personnes interviewées est âgée de 20 à 30 ans.

Les interviews sont résumées en détail en annexe mais un très bref résumé des points principaux se trouve dans ce rapport.

=== Profil 1 : L'artiste occasionnel (31 mars)

*Contexte :* Artiste réalisant 3-6 commissions par an, principalement pour des amis via Discord et Twitter.

*Points clés relevés :*
- Acquisition clients basée sur le bouche-à-oreille uniquement
- Apprécie le modèle centralisé de Skeb mais critique vGen pour son manque de catégorisation
- Propose un système de sous-communautés par fandom (Furry, Pokémon, etc.)
- Ne justifierait pas l'usage d'une plateforme spécialisée avec son faible volume d'activité
- Utilise PayPal malgré les frais élevés par habitude
- Valorise l'aspect communautaire des commissions d'art et des échanges personnels client/artiste

*Validation d'hypothèses :* Contredit mon hypothèse initiale sur les artistes hobbyistes, une plateforme serait plus pertinente pour les artistes semi-professionnels?

=== Profil 2 : L'artiste hybride client/vendeur (6 avril)

*Contexte :* Game designer ayant la création de dessins comme hobby, 12-15 commissions/an produites, client actif également.

*Côté artiste :*
- Utilise Trello pour l'organisation personnelle
- Sélectif dans ses clients grâce à son emploi principal
- Acquisition de clients via bouche-à-oreille Discord/Twitter

*Côté client :*
- Recherche "aléatoire" lors de navigation sur réseaux sociaux
- *Frustration principale :* Opacité des prix, obligation de contacter pour obtenir des tarifs
- Préfère les YCH pour leur simplicité
- Souhaite séparer interactions professionnelles des réseaux sociaux

*Insight majeur :* Exprime le besoin d'outils dédiés pour professionnaliser les échanges, comme dans son travail de game designer.

=== Profil 3 : L'artiste en transition professionnelle (6 avril)

*Contexte :* Transition emploi 36h → full-time art, 2-3 commissions/semaine.

*Défis identifiés :*
- Gestion administrative rudimentaire (Excel)
- Processus collaboratif complexe nécessitant des validations constantes
- Dépendance aux algorithmes des réseaux sociaux
- *Crainte principale :* Se retrouver sans commissions en fin de file

*Évolutions observées :*
- Exigence paiement après validation esquisse (suite à incident)
- Expérimentation YCH + Patreon
- Style non-adapté aux plateformes existantes (trop orientées anime selon lui)

*Validation :* Confirme le besoin d'outils structurés pour gérer les étapes de validation et communications.

=== Profil 4 : Le gros client utilisateur Skeb (7 avril)

*Contexte :* Client très actif (500 CHF/mois historiquement), utilisateur expérimenté de Skeb.

*Retours sur Skeb :*
- *Avantage majeur :* Connexion Twitter montrant disponibilité en temps réel
- Économies significatives : exemple de 15€ vs 200€ pour commissions équivalentes artiste japonais vs occidental
- Processus automatisé évite perte de temps inutile pour l'artiste
- *Inconvénient :* Problèmes de traduction perdant des détails et manque d'édition du produit final

*Habitudes hors Skeb :*
- Schéma classique Twitter → Discord
- Stratégie "planter une graine", apprécie l'attente longue
- *Frustration :* Dépendance aux algorithmes réseaux sociaux

*Validation forte :* Démontre la viabilité du modèle automatisé et l'importance d'une intégration avec réseau social

=== Profil 5 : Discussion informelle plateformes existantes (30 mars)

*Insights sur l'écosystème :*
- vGen perçue comme orientée anime malgré diversité réelle
- Problème qualité variable ("esthétique DeviantArt")
- PayPal critiqué (frais jusqu'à 15%)
- *Défi principal :* Fragmentation - aucune plateforme ne centralise tous les artistes désirés

== Interview quantitative

En plus de ces interviews qualitatives, j'ai mené une enquête quantitative via Google Forms qui a recueilli 84 réponses entre le 28 avril et le 1er mai 2025.

J'ai pu avoir un ratio de 75% (63 personnes) de clients et 25% d'artistes (21 personnes). Dans ces classifications, certains artistes sont aussi clients donc on obtient 73 clients finalement.

Les détails sont en annexe en fin de documents.

= Analyse des retours et conclusions

Les interviews menées révèlent un écosystème où artistes et clients naviguent entre plusieurs plateformes sans solution vraiment satisfaisante. L'enquête quantitative confirme et amplifie ces observations avec des données concrètes sur 84 répondants.

== Révision du public cible initial

Du côté des artistes, on observe une grande disparité dans les volumes d'activité, allant de l'artiste occasionnel produisant 3 à 6 commissions par an jusqu'à celui en transition vers le full-time avec 2-3 œuvres hebdomadaires. Les données quantitatives révèlent que 82% des artistes vendeurs produisent moins de 10 commissions par an, confirmant la prédominance des artistes occasionnels.

Cette différence influence directement leur rapport aux plateformes spécialisées, les artistes occasionnels considèrent qu'une plateforme dédiée ne justifierait pas l'investissement en temps nécessaire, tandis que ceux plus actifs y voient un réel potentiel de professionnalisation. On trouve ici une contradiction avec mon hypothèse initiale où je pensais faire une plateforme principalement pour les artistes hobbyistes. Finalement, une telle plateforme serait-elle plus intéressante pour les artistes semi-pros, voire professionnels ?

== Validation des frustrations identifiées

La gestion actuelle des commissions suit un schéma typique Discord-Twitter-PayPal que l'enquête quantitative confirme massivement : 95% des clients trouvent leurs artistes via les réseaux sociaux. Ce processus dispersé génère effectivement des frustrations réelles, puisque 30% des artistes expriment une insatisfaction marquée avec leur système actuel de gestion.

L'opacité des prix se confirme comme un gros enjeu. Les données montrent que 65% des artistes facturent entre 20-100 USD par commission avec une tarification par pièce, mais les clients peinent à accéder à cette information facilement. Cette frustration se traduit dans les fonctionnalités les plus demandées : 44% des clients veulent un filtrage par prix.

== Passivité de la recherche actuelle

Un élément particulièrement frappant des données quantitatives est que 60% des clients admettent laisser les algorithmes des réseaux sociaux dicter leurs choix d'artiste. Cette dépendance aux algorithmes confirme le caractère aléatoire et passif de la recherche actuelle, validant le besoin d'outils de découverte plus structurés.

Du côté client, cette recherche passive engendre des pertes de temps considérables et explique pourquoi 58% des répondants placent "la facilité de trouver des artistes disponibles" comme grande priorité pour adopter une plateforme de commissions.

== Potentiel validé mais adoption incertaine

L'expérience Skeb illustre parfaitement les bénéfices d'une approche automatisée, avec des retours très positifs de la part du gros client interviewé. Les 36% de clients ayant déjà utilisé une plateforme de commissions confirment cette tendance avec des retours globalement positifs sur la facilité d'utilisation et la sécurité des paiements.

Cependant, un paradoxe émerge : malgré les frustrations exprimées et les fonctionnalités souhaitées clairement identifiées, seuls trois artistes sur 17 utilisent actuellement des plateformes spécialisées. L'intérêt d'une telle plateforme n'est peut-être pas assez grand pour effectuer un changement vers celle-ci.

== Le défi de la masse critique

Pour conclure, le point le plus complexe pour ce MVP, visible tant dans les interviews que dans les données quantitatives, est l'obtention d'une masse critique d'utilisateurs. On le voit très clairement : tout le monde utilise Twitter pour trouver des artistes alors que ce n'est même pas une plateforme d'art. C'est juste la plateforme la plus populaire, le statu quo.

Cette réalité questionne fondamentalement la viabilité d'une nouvelle plateforme : même avec des fonctionnalités supérieures et répondant aux besoins exprimés, comment convaincre un écosystème entier de migrer vers une solution alternative ? La fragmentation actuelle pourrait paradoxalement être préférée à l'effort de changement, malgré ses inefficacités reconnues.

= Choix technologiques et réalisation du MVP

== Choix technologiques

Avec mes compétences, j'ai rapidement choisi d'utiliser le framework Quarkus qui est parfait pour mon type d'application web. Étant plus à l'aise avec Java, Quarkus permet d'effectuer un backend dans ce langage et d'intégrer le frontend dans une même application. Un autre point fort de Quarkus est sa possibilité de faire du hot-reloading de l'entièreté de l'application, peu importe que les changements soient dans le backend ou frontend. J'ai aussi utilisé l'ORM Hibernate JPA qui permet de générer les éléments de la base de données de façon quasi transparente à partir d'objets Java annotés `@Entity`.

Pour le frontend, j'ai utilisé Vite + React qui s'intègre avec une extension Quarkus nommée Quinoa qui permet de lancer Vite et Quarkus en une seule commande et de faire le linkage entre les deux entités.

De plus, j'ai organisé ce projet en polyrepo : un repository pour la partie axée cours MVP (donc le rapport), et une partie axée site en lui-même qui est mon projet.

== Réalisation du MVP

J'ai commencé par établir un UML basique pour mettre en place le backend et les différentes entités de ma base de données, vu que le site est intrinsèquement stateful.

Ensuite j'ai dû trouver un nom, j'ai choisi CoPla, dérivé simplement de #strong[Co]mmission #strong[Pla]tform

La première étape a été de setup les pages de login et register, étant donné que c'est un des éléments les plus importants et basiques de l'application. J'ai établi une gestion d'utilisateurs basique avec les fonctionnalités d'inscription et de connexion sécurisées en utilisant Quarkus Security.

Ensuite, j'ai créé une page utilisateur simple premièrement que j'ai ensuite complétée avec la possibilité d'ajouter des informations liées aux commissions. J'ai mis en place deux types de profils distincts : le profil client et le profil artiste. Dans ma conception, l'artiste `extend` le client dans ma hiérarchie d'objets, permettant aux artistes d'également commander des œuvres.

Pour les artistes, ils peuvent indiquer les tags qui les représentent. Ils ont aussi accès à une carte de commissions avec différents éléments et prix. J'ai aussi ajouté un bouton permettant à l'artiste d'indiquer s'il est ouvert aux commissions ou non, répondant directement au besoin identifié lors des interviews concernant la visibilité de la disponibilité.

Le système vérifie automatiquement le type d'utilisateur et affiche les informations correspondantes selon qu'il s'agisse d'un artiste ou d'un client.

En me basant sur mes interviews, j'ai remarqué que l'intégration avec un réseau social était quasi-obligatoire vu l'usage massif de ces plateformes, j'ai ajouté un système de vérification via BlueSky. J'ai choisi BlueSky plutôt que Twitter/X car c'est une plateforme émergente qui gagne de plus en plus d'utilisateurs, alors que Twitter est un peu problématique actuellement... De plus, l'API de BlueSky, AT-Proto est gratuite à l'utilisation ce qui n'est pas le cas de Twitter/X avec un abonnement a plusieurs miliers de francs...

Le système n'est pas encore entièrement fonctionnel mais fonctionne partiellement, permettant une vérification d'identité qui renforce la confiance entre artistes et clients.
Il est possible aussi de vérifier si des artistes qu'on suit sur BlueSky sont présents sur CoPla mais pour l'instant cette synchronisation se fait seulement à la vérification. J'ai eu du mal à le faire après coup, par exemple périodiquement.

=== Itérations sur l'interface

J'ai passé beaucoup de temps sur de nombreuses itérations du frontend avec l'aide d'LLMs pour obtenir quelque chose de visuellement attrayant. Bien que cela m'ait pris plus de temps que prévu, j'ai considéré que l'aspect visuel était crucial pour un MVP de ce type, qui doit aller plus loin qu'un simple prototype. N'ayant pas les compétences en design, j'ai largement utilisé les LLMs pour créer une interface fonctionnelle et esthétique.

Le MVP actuel propose donc une plateforme fonctionnelle permettant l'inscription d'artistes et de clients, la gestion des profils avec spécification des services et tarifs, un système de disponibilité, et une vérification sociale via BlueSky.

=== Ce qu'il manque

Par rapport à ma proposition initiale, il manque tout de même la gestion de messaging, de galerie pour les artistes, la gestion de commission via kanban intégré. J'ai décidé de prioriser l'affichage des artistes et de la disponibilité ainsi que la gestion de réseaux sociaux. 

== Déploiement sur Google Cloud

L'application étant une application web, j'ai dû la déployer sur un service cloud pour qu'elle soit accessible en permanence. J'ai choisi Google Cloud Platform principalement pour des raisons économiques car leur offre d'essai gratuit de 3 mois avec un crédit de 250 CHF était amplement suffisante pour la durée du projet.

=== Architecture de déploiement

J'ai opté pour une architecture containérisée utilisant Docker Compose sur une machine virtuelle Google Cloud. Mon docker-compose lance alors quatre container différents: 

Le conteneur PostgreSQL gère la base de données. J'ai choisi PostgreSQL car c'est un peu le best du best avec Quarkus et Hibernate JPA. Pour l'instant je perds toutes les données lors du redémarrage ce qui n'est pas trop grave, l'application n'étant pas complète dans ses features. Ensuite il y a le conteneur Quarkus qui héberge l'application elle-même. Le conteneur NGINX sert de reverse proxy et gère le routage entre HTTP et HTTPS. L'utilisation d'HTTPS est obligatoire car toute application gérant des comptes utilisateurs doit être un minimum sécurisée, ensuite, l'authentification OAuth d'AT-Proto refuse de fonctionner sur des sites non sécurisés donc je n'ai pas vraiment le choix !

Le quatrième conteneur, Watchtower, surveille DockerHub toutes les 5 minutes pour détecter de nouvelles versions de l'application. Cette surveillance automatique s'intègre avec ma pipeline CI/CD qui compile le projet Quarkus en image native et la pousse sur DockerHub à chaque commit sur la branche principale.


= Tests utilisateurs

J'ai réussi à donner l'application à un petit groupe restreint de personnes qui constituent mon public cible, j'ai aussi recontacté l'un des artistes que j'ai interviewés pour avoir un retour sur ce qui est déjà disponible. Ces tests ont pu mettre en lumière certains soucis liés à l'UI, et ont pu mettre en avant les besoins réels des utilisateurs.

== Les retours positifs

L'accueil général de la plateforme s'est révélé très positif. Les utilisateurs ont particulièrement apprécié la page d'accueil qui va "droit au but" et permet aux nouveaux utilisateurs de comprendre immédiatement l'objectif du site, c'était un feedback récurrent donc très positif. L'interface générale a été jugée claire et simple, offrant un contraste efficace avec la "complexité de plateformes comme Patreon" où il est difficile de trouver les fonctionnalités principales.

Les utilisateurs voient un réel potentiel avec l'intégration de BlueSky, et plus de la moitié des testeurs ont essayé l'intégration avec BlueSky, même si la fonctionnalité de vérification de following n'était pas testable pour eux (Ils ne suivaient personne présent sur la plateforme, ce qui fait sens sachant qu'il n'y a que des utilisateurs fictifs sur la plateforme).

L'aspect visuel de l'application, notamment le thème sombre avec les accents violets, a été bien reçu. Les testeurs ont noté que cette combinaison attire naturellement l'œil vers les éléments importants comme les cartes de commission et les bannières d'artistes.

Les fonctionnalités de filtrage par prix, styles artistiques et tags ont été identifiées comme particulièrement utiles pour aider dans le processus de recherche d'artistes, répondant directement à certains besoins exprimés lors des interviews initiales.

== Les retours négatifs

Plusieurs problèmes techniques ont été identifiés. J'ai eu l'un des testeurs qui s'est amusé à essayer de casser la base de données et les entrées utilisateurs, ce qui est très utile pour moi. Selon ce testeur, les tokens de Quarkus Security n'ont pas l'air très sécurisés. C'est quelque chose à creuser lors du processus d'amélioration de l'application.

Ensuite il y a eu de nombreux problèmes liés à l'interface : la bio utilisateur ne peut pas être modifiée (normale, elle n'est pas encore implémentée), le bouton de création de requêtes de commission n'est pas fonctionnel (normal aussi), et certains noms d'utilisateur invalides (incluant du code JavaScript) cassent l'affichage des profils même si aucune injection XSS ne se produit.

L'affichage des emails sur les profils publics pose un problème de confidentialité que plusieurs utilisateurs ont souligné. Les artistes devraient pouvoir contrôler la visibilité de ces informations personnelles, de plus beaucoup d'entre eux peuvent utiliser des emails qui leakent des données personnelles (nom et prénom).

L'utilisation de l'espace écran, particulièrement sur desktop, est problématique avec trop d'espaces vides sur les pages de profil d'artistes. Les utilisateurs suggèrent d'agrandir les bannières et cartes de commission pour mieux utiliser l'espace disponible, le problème est que le site occupe 50% de l'espace de l'écran, ce qui est bien pour du mobile, mais pour de l'utilisation desktop, ce n'est pas bon.

Ensuite, dans la partie plus utile du site, j'ai eu le retour qu'il fallait moins montrer la landing page et plus directement montrer les artistes, les mettre en valeur vu qu'ils sont tout de même centraux au site, ce qui manque pour le moment. J'ai aussi eu comme retour qu'avoir un système de follow en plus du système BlueSky serait super utile, peut-être que tous les artistes n'utilisent pas BlueSky (ce qui est le cas).

Sinon quelques bugs d'interface par-ci par-là ont été notés.

== Conclusion des tests

Ces tests utilisateurs ont confirmé la pertinence du concept et de l'approche générale de CoPla. Les utilisateurs comprennent immédiatement la valeur ajoutée de la plateforme et apprécient sa simplicité comparée aux solutions existantes. L'intégration BlueSky est perçue comme super  utile.

Même s'il y a des points négatifs, j'ai eu beaucoup de retours encourageants, après peut-être que ces retours étaient biaisés... Mais globalement c'est une avalanche de bonnes nouvelles.

= Pérennité du projet

Pour le moment, le projet, par manque de temps, n'est pas très pérenne. Je n'ai pas encore pu documenter le flow des requêtes entre le backend et le frontend. De plus il n'y a aucun test pour le moment, vu que j'ai passé beaucoup de temps sur les features qui étaient selon moi les plus importantes. Donc finalement la reprise du projet pourrait se faire avec quelques accrocs. 

Néanmoins j'ai commencé à documenter comment mettre en place une VM, mettre en place le docker compose avec NGinx pour pouvoir faire le routage sur l'application. Un tel document est selon moi très important, surtout du fait que le projet ne risque pas de rester sur Google Cloud dans le temps avec des alternatives locales qui sont plus attrayantes (mais plus chères !!).

Du côté positif, certains éléments sont déjà en place pour faciliter la maintenance future. L'utilisation de Git avec un pipeline CI/CD automatisé qui compile l'application en image Docker native et la pousse sur DockerHub constitue une base solide. Le système Watchtower surveille automatiquement les nouvelles versions et redéploie l'application, ce qui automatise une partie importante du processus de déploiement. L'architecture containerisée avec Docker Compose facilite aussi le déploiement sur n'importe quel environnement, que ce soit en local ou sur un autre fournisseur cloud.

La stack technologique choisie avec Quarkus, React et PostgreSQL représente des technologies populaires et bien documentées, ce qui faciliterait la reprise par d'autres développeurs. Le polyrepo organisé sépare clairement les préoccupations entre le rapport académique et le code de l'application elle-même. 

Cependant, plusieurs éléments critiques manquent cruellement. L'absence totale de tests, qu'ils soient unitaires, d'intégration ou end-to-end, représente le risque le plus important pour la maintenance future. Toute modification du code se fait actuellement à l'aveugle... Il y a aussi quelques bugs dans l'application comme mentionné dans la partie feedback utilisateurs, donc elle n'est pas encore 100% fonctionnelle même dans sa version écourtée.

== Aspects financiers

Le "seul" moyen pour que l'application soit pérenne dans le temps financièrement est de mettre en place une commission#footnote[sens usuel] sur les commissions des artistes. Plus tôt dans le document j'ai pu mentionner 4% mais la valeur d'une telle commission doit se choisir en prenant en compte les prix d'hébergement, la masse d'utilisateurs, et davantage de recherches sur les commissions que prennent les sites concurrents. Le problème est que pour mettre en place ce système, il faut que l'entièreté des features projetées du site soient complètes, ce qui n'est pas le cas pour le moment.

Je dis que c'est le seul moyen car selon moi et d'autres artistes, l'idée de mettre des pubs sur une telle plateforme n'a pas lieu d'être, et mettre en avant les artistes qui paieraient un abonnement poserait un réel problème éthique.

== Conclusion de la pérennité

Donc pour rendre l'application pérenne, il faut travailler sur ces points-ci en premier lieu : les tests, la documentation technique de l'API et les corrections de problèmes sur les features actuelles, avant de pousser plus de features. Ensuite une fois que cette première phase de pérennité est développée, je peux mettre en place le reste des features et par conséquent pouvoir avoir un objectif de pérennité financière.

= Difficultés rencontrées et solutions

La grosse difficulté de ce projet était la partie frontend, je l'ai déjà expliqué plus tôt dans le rapport mais le problème d'un tel MVP est que la partie visuelle de l'application est tout aussi importante que la partie fonctionnelle. Personne ne veut utiliser quelque chose qui ressemble à un site de 2005. Pour pallier à ça j'ai itéré beaucoup de fois sur cette UI en utilisant des LLMs avec plus ou moins de succès. J'ai tout de même un contrôle quasi total du code mais le code développé avec IA est quelque peu spaghetti et manque aussi de bonnes manières et pratiques d'effectuer ce genre d'interface, connaissances que je n'ai juste pas.

La seconde difficulté était l'intégration de l'API AT-Proto avec OAuth. La documentation est très menue (un simple read me sur le repo git d'At-Proto avec juste un exemple de code). J'ai aussi le problème de pouvoir garder une sorte de token dans la base de données pour pouvoir effectuer des synchronisations avec BlueSky après coup. Pour le moment je ne sais pas trop comment faire et je manque de temps pour chercher plus de solutions. Cette limitation empêche notamment la synchronisation en temps réel des statuts de disponibilité, une fonctionnalité pourtant très importante selon les interviews et retours utilisateur.

Ensuite une grande difficulté était le travail solo, à l'HEIG-VD on s'est habitués à ne jamais travailler tout seul. Donc c'était compliqué de se motiver et aussi de faire des choix pour l'UI mais aussi le backend. 

= Conclusion

Au final, ce projet d'MVP était très intéressant et formateur. Devoir chercher des idées, faire des interviews, apprendre à pitcher son idée et apprendre à recevoir des feedbacks... Ce sont des choses qu'on n'apprend pas forcément dans le contexte de l'HEIG-VD.

Ce projet m'a particulièrement marqué par la complexité de créer quelque chose d'entièrement nouveau dans un marché déjà établi. Les interviews ont révélé un paradoxe fascinant : tout le monde se plaint de l'écosystème actuel (Twitter → Discord → PayPal), mais très peu sont prêts à changer leurs habitudes pour quelque chose de mieux. C'est probablement le défi le plus dur à surmonter dans la recherche d'un produit viable.

D'un point de vue technique, développer seul une application full-stack m'a poussé dans mes retranchements, surtout côté frontend où je partais de quasi zéro. L'utilisation d'LLMs pour accélérer le développement UI s'est révélée à double tranchant : rapide pour prototyper, mais créant du code parfois bof bof qu'il faut ensuite nettoyer.

Les retours des tests utilisateurs ont été globalement encourageants, validant l'hypothèse qu'il peut y avoir un besoin pour une plateforme comme CoPla. Reste maintenant à voir si cette validation se traduirait par une adoption réelle à plus grande échelle, chose très importante pour ce type de plateforme...

Si je devais continuer ce projet, ce que je vais sûrement faire, les priorités seraient claires : tests automatisés, correction des vulnérabilités de sécurité, et surtout, développement des fonctionnalités manquantes comme le système de messaging et le kanban intégré. Peut-être aussi voir avec des personnes de mon entourage pour développer une interface qui cible peut-être mieux les utilisateurs. Le but est vraiment de pouvoir gérer ces commissions de A à Z sur CoPla !

Finalement c'était une expérience enrichissante et je suis bien content d'avoir pu travailler sur ce projet.

#pagebreak()
= Annexes

== Interviews utilisateurs détaillées

Voici les résumés détaillés des interviews 1 on 1 que j'ai pu avoir avec mon public cible

== 31 Mars 2025 - Artiste occasionnel 

L'interviewé réalise 3 à 6 commissions par an, principalement pour des amis et connaissances. Il utilise surtout Discord pour gérer ses commandes, annonçant occasionnellement sa disponibilité sur Twitter et Fur Affinity. Son acquisition de clients repose essentiellement sur le bouche-à-oreille.  

Ensuite, l'interviewé apprécie le modèle centralisé de Skeb et vGen mais critique le manque de catégorisation efficace de vGen, qui semble trop axé sur le style anime. Il propose un système de sous-communautés similaire à Twitch pour mieux organiser les artistes par fandom ou style (Furry, Pokémon, Digimon, etc.). Il souligne aussi la croissance de la communauté furry, qui n'est plus vraiment une niche mais plutôt une sous-culture à part entière, et son besoin d'une meilleure représentation sur ces plateformes.  

Un obstacle majeur pour les nouvelles plateformes est d'atteindre une masse critique d'utilisateurs, nécessitant presque un "exode" d'une plateforme existante, comme observé avec Twitter et BlueSky. Selon l'interviewé, un artiste réalisant au moins cinq commissions par mois tirerait un réel bénéfice d'une plateforme spécialisée. Malheureusement, vu son nombre de dessins par an assez faible, il ne pense pas s'embêter à utiliser ce genre de plateforme. La popularité de l'artiste joue également un rôle inversement proportionnel au besoin d'une plateforme spécialisée.

Il utilise PayPal malgré ses frais qu'il juge beaucoup trop élevés, privilégiant la familiarité à des alternatives comme Stripe. Il absorbe lui-même les frais plutôt que de les répercuter sur ses clients, une pratique qu'il reconnaît non viable à grande échelle.  

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

Le processus automatisé, sans communication directe, présente selon lui un grand avantage en réduisant les coûts en temps pour l'artiste et donc en argent pour le client. Même si des fois cet avantage peut être un inconvénient, surtout lors de problème de traduction. Skeb utilise DeepL pour traduire les commandes en japonais pour ses artistes et des fois des détails grands comme petits sont "lost in translation", pouvant transformer une description complexe en simple "bonjour, j'adore votre style, j'aimerais un dessin" (exemple réel).

En dehors de Skeb, ses habitudes d'achat suivent le schéma classique via Twitter puis Discord, exprimant une frustration claire concernant la dépendance aux algorithmes des réseaux sociaux. Il développe également une stratégie d'achat particulière où il apprécie l'attente prolongée des commissions, considérant cela comme "planter une graine" qui apportera une surprise future agréable. Cette mentalité lui permet de tolérer des délais de plusieurs mois, voire années, sans grande frustration.

== 30 Mars 2025 - Échange sur les plateformes existantes

Cet entretien informel (entre deux game) a confirmé la réputation de vGen comme plateforme orientée anime, bien que des artistes de styles variés y soient présents après recherche ciblée. L'interviewé a souligné le problème de qualité variable des artistes, évoquant une esthétique "DeviantArt-esque" pour qualifier les travaux de moindre qualité. La question des systèmes de paiement s'est révélée centrale, critiquant sévèrement PayPal avec ses frais atteignant 15% incluant les conversions de devise, ce qui pousse certains artistes vers des alternatives comme Stripe et Revolut.

Le principal défi identifié concernant l'adoption de nouvelles plateformes reste la fragmentation de l'écosystème. Aucune plateforme comme SKeb ou VGen ne centralise l'ensemble des artistes désirés, obligeant les clients à multiplier les comptes et les recherches...

== Interviews quantitatives détaillées

Voici les détails des interviews quantitatives :

=== Côté artiste

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

Concernant les motivations d'adoption d'une plateforme de commission, quelques fonctionnalités ressortent très clairement. La facilité de trouver des artistes disponibles arrive en tête avec 58% des répondants, suivie de près par les notifications d'ouverture de commissions (51%) et la possibilité de retrouver facilement des artistes déjà suivis (53%). Le filtrage par prix est aussi très important pour 44% des clients. Ces chiffres deviennent encore plus élevés si on retire les 22% qui ont indiqué déjà utiliser une telle plateforme !
