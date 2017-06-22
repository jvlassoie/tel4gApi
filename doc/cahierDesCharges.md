#Concept

Le but étant de séparer la partie gestion de données de la partie utilisateur, pour centraliser les actions et modifications apportée sur celle-ci. 
Cette manière de concevoir les applications permet une portabilité d'un projet sur différentes plateformes (smartphone, tablet,...).
 Cette centralisation permet plusieurs avantage notamment,
  en terme de temps car c'est une partie qui n'est écrite qu'une seule fois et par conséquent elle est beaucoup plus complète. 

##Langages
	- PHP
	- SQL
	- CSS
	- HTML

##Server
	
	- Apache

##Framework(library)
	- Symfony (twig,doctrine)

###Back	
	- Base de donnée mysql
	- ApiPlatformBundle

###Front
	- Sass
	- Bootstrap	
	- Angularjs
	
##Justification

###Concept

De grandes Sociétés utilise ce système notamment  "Amazon".

###Server

Apache car facile a utiliser.

###Front

####Côté CSS

Utilisation du préprocesseur Sass qui permettra une écriture du style CSS plus rapide,
Inclure bootstrap pour rendre l'application responsive grace au système de grille.

####Côté JS

Utilisation d'Angularjs, pour répond à la problématique du Single page Application de par son système de route ainsi que de sa modularité.

###Back 

####Côté Framework

Mon choix c'est porté sur Symfony car c'est framework complet, robuste et reconnu,
Parce qu'il embarque avec lui un moteur de template (twig) et un ORM (Doctrine), Mais aussi que c'est fichier de configuration peuvent ce faire en YAML qui lui est très lisible. 
Il permet surtout d'intégrer des fonctionnalités sur ses applications via des bundles,
ce qui permet de ne pas constamment perdre son temps a réécrire et a réfléchir à la conception de ceux-ci.

####Gestion de données

J'ai choisi Mysql car c'est SGBD que je connait bien, et j'ai aussi opté pour le bundle ApiPlatform qui permet de créer des API REST plus facilement.
