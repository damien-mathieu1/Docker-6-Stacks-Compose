#!/bin/bash

echo "Arret de tous les containers et suppression"
docker stop $(docker ps -aq)
docker rm $(docker ps -aq)

echo "Lancement de traefik"
# Lancer Traefik
cd traefik
docker compose up -d
cd ..

echo "Lancement de loki"
# Lancer Loki
cd loki
docker compose up -d
cd ..

echo "Lancement de ghost"
cd ghost
docker compose up -d
cd ..

echo "Lancement de keycloak"
cd keycloak
docker compose up -d
cd ..

echo "Lancement de gitea"
cd gitea
docker compose up -d
cd ..

echo "Lancement de magento"
cd magento
docker compose up -d
cd ..

# (... Répétez le processus pour chaque application)

echo "Toutes les stacks ont été lancées avec succès."
