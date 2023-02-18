# Homelab


## Présentation
Ce repo est les configs pour mon homelab.

Mon homelab permet de gérer ma vie de tous les jours.

J'utilise `portainer` pour gérer mes différents services, le tout héberger sur un simple raspberry pi 4.

## structure
J'ai décidé d'utiliser un monorepo avec toutes mes configs pour héviter de créer un repo pour chaque nouveau service.


### portainer

Le dossier **portainer** contiendra l'ensemble des configurations pour les services fonctionnant sur ce dernier.

Le format préféré est un fichier docker-compose.yml par service