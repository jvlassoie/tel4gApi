# tel4G API #
## Installation ##

Todo List :
-------
* Cloner le depot sur son poste.
* Créer le host virtuel "tel4gapi.local".
 
```
#!vhost

<VirtualHost *:80>
    ServerName tel4gApi.local
  DocumentRoot C:/wamp64/www/projectTel4gAPI/web
  RewriteEngine On 
        RewriteCond %{HTTP:Authorization} ^(.)
     RewriteRule .* - [e=HTTP_AUTHORIZATION:%1]
  <Directory  "C:/wamp64/www/projectTel4gAPI/web">
          Options Indexes FollowSymLinks
         AllowOverride All
          Require all granted
  </Directory>
 </VirtualHost>
```
* Modifier le chemin du  Directory et DocumentRoot si le projet n'est dans celle indiquée.
* Lancer la commande : 
```
  composer update
```
* Les informations du parameters.yml se trouvent dans le parameters.yml.dist.
* Si le host virtuelle ('autre repository') pour le côté client n'est pas celui indiqué dans la todo list vous devez allez dans le parameters.yml est notée :

```
cors_allow_origin: 'mondomaine.local'

```
=======
> **1.** Cloner le depot sur son poste.
> **2.** Créer le host virtuel "tel4gapi.local".
> `<VirtualHost *:80>
  ServerName tel4gApi.local
  DocumentRoot C:/wamp64/www/projectTel4gAPI/web
  RewriteEngine On
    RewriteCond %{HTTP:Authorization} ^(.)
    RewriteRule .* - [e=HTTP_AUTHORIZATION:%1]
  <Directory  "C:/wamp64/www/projectTel4gAPI/web">
        Options Indexes FollowSymLinks
        AllowOverride All
        Require all granted
  </Directory>
</VirtualHost>`
>**3.** Modifier le chemin du  Directory et DocumentRoot si le projet n'est dans celle indiquée.
>**4.** les informations du parameters.yml se trouvent dans le parameters.yml.dist
>**5.** Importer la bdd du fichier sql  dans le dossier dump
