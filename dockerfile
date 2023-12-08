# Use the official Node.js image as the base
FROM node:14

# Set the working directory to /app
WORKDIR /app

# Copy the package.json and package-lock.json files
COPY package*.json ./

# Install the dependencies
RUN npm install

# Copy the rest of the files
COPY . .

# Expose port 8080 for the app
EXPOSE 8080

# Start the app when the container runs
CMD [ "npm", "start" ]
