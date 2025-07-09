# Use official Node image
FROM node:20

# Set working directory inside the container
WORKDIR /usr/src/app

# Copy package files and install dependencies
COPY package*.json ./
RUN npm install

# Copy the rest of the project
COPY . .

# Expose the port your app runs on
EXPOSE 3000

# Start the app
CMD ["npm", "start"]

