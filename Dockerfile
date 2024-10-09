# Use an official Node.js runtime as a parent image
FROM node:18-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy the package.json and package-lock.json files
COPY package*.json ./

# Install the dependencies
RUN npm install

# Copy the rest of the application code to the working directory
COPY . .

# Expose the port that Vite will run on (default is 5173)
EXPOSE 5173

# Command to run the Vite development server
CMD ["npm", "run", "dev", "--", "--host"]
