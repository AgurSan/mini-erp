# Configuration de la Base de Données pour le Projet

## Prérequis

Assurez-vous d'avoir Docker et Docker Compose installés sur votre machine.

## Configuration des Variables d'Environnement

Avant de configurer la base de données, créez un fichier `.env` à la racine de votre projet avec les variables suivantes :

```
DB_HOST=localhost
DB_PORT=5432
DB_USER=postgres
DB_PASSWORD=postgres
DB_NAME=postgres
```

## Démarrage de la Base de Données

Pour démarrer la base de données, exécutez la commande suivante :

```bash
npm run pg:setup
```
