# Utiliser une image Node.js stable
FROM node:18-alpine

# Définir le répertoire de travail
WORKDIR /app

# Copier les fichiers package.json et package-lock.json
COPY package*.json ./

# Installer les dépendances
RUN npm install

# Copier le reste des fichiers
COPY . .

# Exposer le port de l'application
EXPOSE 5173

# Démarrer l'application
CMD ["npm", "run", "dev"]