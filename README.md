# Projet Docker Compose avec Traefik, Loki et Applications

Ce projet propose une infrastructure Docker Compose complète avec un proxy Traefik, Loki pour la collecte de logs, et plusieurs applications telles que Magento, Keycloak, Ghost et gitea

## Instructions de Déploiement

### Clonage du Projet

```bash
git clone https://gitlabinfo.iutmontp.univ-montp2.fr/mathieud1/td-controle-docker.git
cd td-controle-docker
```

### Lancement des Stacks

Utilisez le script `init.sh` pour lancer toutes les stacks en une seule commande :

```bash
./init.sh
```

Cela lancera Traefik, Loki, et toutes les applications spécifiées dans des conteneurs Docker.

### Accès aux Applications (Code)

Les applications sont accessibles via les noms de domaine spécifiés dans les fichiers `docker-compose.yml`. Par exemple, Ghost sera accessible à l'adresse `http://ghost.td.anthonymoll.fr/`.

### Accès aux Applications (Url)
- Gitea : [http://gitea.td.anthonymoll.fr:3020/]
- Magento : [http://magento.td.anthonymoll.fr:82/]
- Ghost : [http://ghost.td.anthonymoll.fr:3030/]
- Keycloak : [http://keycloak.td.anthonymoll.fr:8081]

## Structure du Projet

- `traefik/`: Configuration pour Traefik.
- `loki/`: Configuration pour Loki.
- `keycloak/`, `gitea/`, etc.: Configurations spécifiques pour chaque application.


---

**Auteur:** [MATHIEU Damien]
