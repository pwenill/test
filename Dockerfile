# Use the official Node.js image as the base image
FROM node:20.5.1

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json .

# Install dependencies
RUN npm install

# Copy the rest of the application code to the working directory
COPY . .

# Expose the port that the server will be listening on
EXPOSE 1546

# Start the server
CMD ["node", "server.js"]