# Utiliser l'image officielle de Node.js comme image de base
FROM node:latest

# Créer un répertoire de travail
WORKDIR /app

# Copier les fichiers package.json et package-lock.json
COPY package*.json ./

# Installer les dépendances de l'application
RUN npm install

# Copier le reste des fichiers de l'application
COPY . .

# Exposer le port sur lequel l'application tourne
EXPOSE 1546

# Commande pour démarrer l'application
CMD ["npm", "start"]