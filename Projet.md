# Mini ERP - Projet Fullstack

## Vue d'ensemble

Ce projet est un mini système ERP (Enterprise Resource Planning) développé comme une application fullstack. Il utilise Node.js/TypeScript pour le backend et React avec Vite pour le frontend. Le projet est structuré comme un monorepo manuel, permettant une gestion facile du code frontend et backend dans un seul dépôt.

## Structure du Projet

## Technologies Utilisées

### Backend

- Node.js
- TypeScript
- Express.js
- PostgreSQL

### Frontend

- React
- Vite
- TypeScript

### Outils de Développement

- ESLint
- Prettier

## Fonctionnalités Principales

1. Authentification et autorisation
2. Gestion des utilisateurs
3. Gestion des produits
4. Gestion des commandes
5. Dashboard simple
6. Page d'administration

## Configuration et Installation

1. Cloner le dépôt
2. Installer les dépendances :
   ```
   npm run install:all
   ```

## Scripts Disponibles

- `npm run dev:back` : Démarre le serveur backend en mode développement
- `npm run dev:front` : Démarre le serveur frontend en mode développement
- `npm run build` : Construit le projet (backend et frontend)
- `npm run start:back` : Démarre le serveur backend en production
- `npm run start:front` : Sert l'application frontend en production
- `npm run lint` : Exécute ESLint sur le projet
- `npm run format` : Formate le code avec Prettier

## Développement

### Backend

- Le code source du backend se trouve dans `back/src/`
- Utilisez `npm run dev:back` pour le développement avec rechargement automatique

### Frontend

- Le code source du frontend se trouve dans `front/src/`
- Utilisez `npm run dev:front` pour le développement avec rechargement à chaud

## Base de Données

Le projet utilise PostgreSQL. Assurez-vous d'avoir configuré votre base de données et mis à jour les informations de connexion dans le fichier de configuration du backend.

## Déploiement

1. Construisez le projet : `npm run build`
2. Démarrez le backend : `npm run start:back`
3. Servez le frontend : `npm run start:front`

## Bonnes Pratiques

- Utilisez TypeScript pour un typage fort
- Suivez les conventions de nommage et de style définies par ESLint et Prettier
- Écrivez des tests unitaires pour les fonctionnalités critiques
- Documentez les API et les composants importants

## Contribution

1. Créez une branche pour votre fonctionnalité (`git checkout -b feature/AmazingFeature`)
2. Committez vos changements (`git commit -m 'Add some AmazingFeature'`)
3. Poussez vers la branche (`git push origin feature/AmazingFeature`)
4. Ouvrez une Pull Request
