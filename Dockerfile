# Use a Node.js base image
FROM node:16-alpine  

# Set the working directory
WORKDIR /app

# Copy package.json and package-lock.json first for efficient caching
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Expose the port the app runs on
EXPOSE 3000

# Start the application
# CMD ["npm", "run", "dev"]  # For development
CMD ["npm", "run", "start"]  