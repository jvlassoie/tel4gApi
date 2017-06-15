# tel4G API #
## Installation ##

Todo List :
-------

1. Cloner le depot sur son poste.
2. Créer le host virtuel "tel4gapi.local".
3. ```
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
3. Modifier le chemin du  Directory et DocumentRoot si le projet n'est dans celle indiquée.
4. les informations du parameters.yml se trouvent dans le parameters.yml.dist