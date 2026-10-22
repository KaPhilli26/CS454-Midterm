# Use a lightweight Node.js base image
FROM node:22-alpine

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy dependency definitions and install them
COPY package*.json ./
RUN npm install

# Copy the application source code
COPY . .

# Switch to the default non-root node user for runtime security
USER node

# Expose a default port (this will be overridden by your environment variables)
EXPOSE 3000

# Start the HTTP service
CMD ["npm", "start"]
