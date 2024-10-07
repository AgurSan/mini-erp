# Utiliser une image Node.js stable
FROM node:18-alpine

# Définir le répertoire de travail
WORKDIR /app

# Copier les fichiers package.json et package-lock.json
COPY package*.json ./

# Installer les dépendances
RUN npm install

# Installer nodemon pour le rechargement à chaud
RUN npm install -g nodemon

# Copier le reste des fichiers
COPY . .

# Exposer le port de l'application
EXPOSE 3000

# Démarrer l'application en mode développement
CMD ["nodemon", "src/index.ts"]