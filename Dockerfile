# Use Node.js version 16 as the base image
FROM node:16

# Set the working directory inside the container
WORKDIR /app

# Copy package.json to the working directory
COPY package.json .

# Install the application's dependencies
RUN npm install

# Copy all application files into the container
COPY . .

# Expose port 3000 so the application can be accessed
EXPOSE 3000

# Start the application
CMD ["npm", "start"]