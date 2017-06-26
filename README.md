# tel4G API #
## Installation ##

Todo List :
-------
* Cloner le depot sur son poste.
* Vérifier que php soit >= 7.0.1
* Créer le host virtuel "tel4gapi.local".
 
```
#!vhost

<VirtualHost *:80>
    ServerName tel4gApi.local
  DocumentRoot C:/wamp64/www/projecttel4gapi/web
  RewriteEngine On 
        RewriteCond %{HTTP:Authorization} ^(.)
     RewriteRule .* - [e=HTTP_AUTHORIZATION:%1]
  <Directory  "C:/wamp64/www/projecttel4gapi/web">
          Options Indexes FollowSymLinks
         AllowOverride All
          Require all granted
  </Directory>
 </VirtualHost>
```
* Dans le cas où il y aurait un probleme de cross-domaine une autre configuration du server est possible mais nécessite l'activation du module 'headers_module'.(ligne a décommenter dans le http.conf).
```
<VirtualHost *:80>
	ServerName tel4gApi.local
	DocumentRoot C:/wamp64/www/projecttel4gapi/web
	RewriteEngine On
    RewriteCond %{HTTP:Authorization} ^(.)
    RewriteRule .* - [e=HTTP_AUTHORIZATION:%1]
	<Directory  "C:/wamp64/www/projecttel4gapi/web">
    	<IfModule mod_headers.c>
    		Header set Access-Control-Allow-Origin: "http://local.tel4g" 
 		</IfModule>
        Options Indexes FollowSymLinks
        AllowOverride All
        Require all granted
	</Directory>
</VirtualHost>
```
* Modifier le chemin du  Directory et DocumentRoot si le projet n'est dans celle indiquée.
* Lancer la commande : 
```
  composer install
```
* Les informations du parameters.yml se trouvent dans le parameters.yml.dist.
* Si le host virtuelle ('autre repository') pour le côté client n'est pas celui indiqué dans la todo list vous devez allez dans le parameters.yml est notée :

```
cors_allow_origin: 'mondomaine.local'

```

 * Importer la bdd du fichier sql  dans le dossier dump

Cahier des charges :
-------
[Lien du cahier des charges](doc/cahierDesCharges.md)