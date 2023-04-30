# Use the official Node.js image as the base image
FROM node:14

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install the application's dependencies
RUN npm install

# Copy the rest of the application's code into the working directory
COPY . .

# Expose the API server's port
EXPOSE 3000

# Start the API server
CMD ["node", "app.js"]
