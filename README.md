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
* les informations du parameters.yml se trouvent dans le parameters.yml.dist