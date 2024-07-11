# Étape 1: Build de l'application Next.js
FROM node:18-alpine AS builder

# Définir le répertoire de travail dans le conteneur
WORKDIR /app

# Copier le package.json et le package-lock.json pour installer les dépendances
COPY package*.json ./

# Installer les dépendances
RUN npm install

# Copier tout le reste des fichiers de l'application
COPY . .

# Étape 2: Production de l'application Next.js
FROM node:18-alpine AS runner

# Définir le répertoire de travail dans le conteneur
WORKDIR /app

# Copier les fichiers nécessaires pour exécuter l'application
COPY --from=builder /app/dist ./dist
COPY --from=builder /app/node_modules ./node_modules
COPY --from=builder /app/package.json ./

# Exposer le port 4000
EXPOSE 4000

# Commande pour démarrer l'application
CMD ["node", "server.js"]