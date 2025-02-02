# Use the official Node.js image as base
FROM node:18-alpine

# Set the working directory inside the container
WORKDIR /rajvir_singh_site

# Copy package.json and package-lock.json first to leverage Docker caching
COPY package.json package-lock.json ./

# Install dependencies
RUN npm install

# Copy the rest of the project files
COPY . .

# Expose port 7775
EXPOSE 7775

# Start the React development server
CMD ["npm", "start"]
