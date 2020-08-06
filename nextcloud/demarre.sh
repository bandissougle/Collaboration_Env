#! /usr/bin/env bash
# Variable pour fonctionner en SSL derière un proxy inversé
sudo -u www-data php occ config:system:set --value "https" overwriteprotocol
sudo -u www-data php occ config:system:set --value "" overwrite.cli.url
sudo -u www-data php occ config:system:set --value '172.22.100.20' trusted_proxies 0
sudo -u www-data php occ app:install spreed
sudo -u www-data php occ app:enable spreed
# Variable pour gérer le proxy de l'universite
# sudo -u www-data php occ config:system:set --value "proxy.univ-lyon1.fr:3128" proxy

# ne rien mettre après cette commande
apache2-foreground
