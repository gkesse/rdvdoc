#------------------------------------------------
# references apache
#------------------------------------------------
# installer apache
#------------------------------------------------
sudo apt install apache2
#------------------------------------------------
# installer le module apache pour php
#------------------------------------------------
sudo apt install libapache2-mod-php
#------------------------------------------------
# recharger les configurations du serveur
#------------------------------------------------
sudo service apache2 reload
#------------------------------------------------
# redemarrer le serveur
#------------------------------------------------
sudo service apache2 restart
#------------------------------------------------
# afficher l'etat du serveur
#------------------------------------------------
sudo service apache2 status
#------------------------------------------------
# configurer un repertoire personnel
#------------------------------------------------
...
sudo chown -R $USER:www-data /home/{username}/rdvrepo/{sitename}
...
sudo chmod 755 /home/{username}
sudo chmod 755 /home/{username}/rdvrepo
sudo chmod -R 755 /home/{username}/rdvrepo/{sitename}
...
sudo ln -s /home/{username}/rdvrepo/{sitename} /var/www/{sitename}
...
ls -l /var/www/
sudo unlink /var/www/{sitename}
...
-> /etc/apache2/sites-available/{sitename}.conf
-> /etc/apache2/sites-available/000-default.conf
...
<VirtualHost *:80>
    ServerAdmin {email}
    ServerName {sitename}.com
    ServerAlias www.{sitename}.ovh
	DocumentRoot /var/www/{sitename}/
	ErrorLog /var/www/{sitename}/logs/error.log
	CustomLog /var/www/{sitename}/logs/access.log combined
    <Directory /var/www/{sitename}/>
        Options All
        AllowOverride All
        Order allow,deny
        allow from all
        Require all granted
    </Directory>
</VirtualHost>
...
a2ensite {sitename}.conf
a2ensite 000-default.conf
...
a2dissite {sitename}.conf
a2dissite 000-default.conf
...
sudo service apache2 reload
sudo service apache2 restart
...
sudo apt install php-dom
#------------------------------------------------
