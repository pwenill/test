FROM node:18-alpine AS runner

# Définir le répertoire de travail dans le conteneur
WORKDIR /app

# Copier les fichiers nécessaires pour exécuter l'application
COPY --from=builder /app/dist ./dist
COPY --from=builder /app/node_modules ./node_modules
COPY --from=builder /app/package.json ./

# Définir la variable d'environnement pour le port
ENV PORT 4000

# Exposer le port 4000
EXPOSE 4000

# Commande pour démarrer l'application
CMD ["npm", "start"]