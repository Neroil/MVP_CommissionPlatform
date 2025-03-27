# Projet MVP

## L'idée initiale

L'idée est de développer une application qui permet de faciliter le contact entre artiste et client pour au final rendre le processus de mandat plus "officiel" et 
transparant. 


Reformulation :
Mettre en lien artiste et client pour leurs commissions.

Qu'est-ce qu'il se passe si j'essaie de cibler pour jeuxvideo, entreprise, etc. 

Pourquoi est-ce que le gens n'achête pas d'art? Ou plus.

Localité ? Penser peut-être a un truc local. Comment identifier. 

**Inspirations**
- Skeb -> Plateforme qui fait exactement ça mais les artistes doivent avoir un compte bancaire japonais pour pouvoir mettre en place leurs services.
- VGen -> Semble faire exactement ce que je veux, très récent (2023). Semble cibler une communauté de type "anime", mais je dois faire plus de recherches. 

### Con sur VGen

- 5% de frais de traitement par la plateforme, est-il possible de baisser ce cout ? 
- Processus de vérification chiant, on devrait pouvoir se vérifier en se loggant avec son compte twitter ou blusky par exemple...
- Pas de moyen de trouver les artistes en se connectant avec des comptes tiers, ça serait bien de se loggin avec son compte blusky par exemple et voir tous les artistes qu'on follow sur blusky qui sont sur notre site ! 

## La cible

Les artistes freelance, donc on ne cherche pas à viser les artistes professionnels qui eux ont leurs propre contacts, etc. 

Le but de ce projet est de ne pas 

## Brainstorming

1. SSO avec site d'artiste qui ont des apis gratuite (Blusky, DeviantArt, etc)
    - Faudrait-il se focaliser sur une seule plateforme (Genre blusky vu que c'est de plus en plus populaire)
    - https://backlinko.com/bluesky-statistics **27.44 million d'user en janvier 2025**
    - Le problème avec X est l'api payante très contraignante -> Vérifier si c'est vraiment si chiant que ça 
    - Ou faudrait-il avoir une plateforme générique ?
  
2. Permettre d'avoir gestion transparente des interactions :
    - L'artiste donne le nombre client max qu'il accepte de prendre
    - Un client donne son idée avec son prix
    - L'artiste accepte ou non l'idée, possibilité d'effectuer une contre offre de prix et/ou contenu (un peu comme du trading sur steam p/ex)

3. Avoir un système "à la Skeb" ou il y a un minimum d'interaction possible -> Idée qui devient un produit fini avec aucune autre intéractions
4. Avoir un système plus relationnel ou l'artiste peut donner des mise à jour liés à l'avancement de l'oeuvre. (Compatible avec #3)
    - Permettre à l'artiste de demander validation au client et donc au client de donner ou non le feux vert. 

5. Système de chat lié par projet entre l'artiste et le client optionnel (l'artiste choisi s'il veut ou non et le client est mis au courant)
6. Garder sur le serveur les images ?
   - Etudier le prix potentiel de mettre ça en place
7. Possibilité de rendre le projet publique (pour tous les utilisateur du site) ou privé(seulement entre client et artiste).
8. Système de vérification en utilisant un système de linkage de compte (X, Blusky, etc). 
9.  Système de vérification manuel où l'artiste donne des preuves de qui il est et un agent du service valide manuellement la véracité des informations.
10. L'artiste peut mettre en place des TOS (terms of service) personel.
11. Le service met en place un historique des précédentes commandes terminée.
12. Système de type Kanban integrer au site pour que l'artiste gère ses commandes
13. Paiement sécurisé avec libération des fonds à la livraison 
    - Quels sont les enjeux légaux liés à ça ? 
  
14. Faire un site majoritairement pour le desktop, généralement on ne cherche pas a faire ce genre de chose sur un téléphone. 
15. Système de tagging pour pouvoir facilement trouver un style qui nous convient (Anime, Landscapes, Cute, Fantasy, etc.)
16. Notification par email qui indique quand un artiste que l'on suit est ouvert 
17. Permettre à l'artiste de mettre en place des enchères sur des idées qu'ils ont. (Méchanisme déjà populaire mais fait à la mano sur beaucoup de sites)



## Les atouts de mon projets par rapport aux autres

Il me semble très important d'avoir ce système de linkage pour pouvoir facilement trouver les artistes qu'on aime déjà. 


## Matrice Impact/Effort 

|                   | **Effort faible** | **Effort moyen** | **Effort élevé** |
| ----------------- | ----------------- | ---------------- | ---------------- |
| **Impact élevé**  |                   | #2     #3        | #1    #4         |
| **Impact moyen**  |                   |                  |                  |
| **Impact faible** |                   |                  |                  |


