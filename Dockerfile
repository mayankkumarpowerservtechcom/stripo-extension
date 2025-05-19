# Use official Node.js image
FROM node:18

# Set working directory
WORKDIR /usr/src/app

# Copy package files and install dependencies
COPY package*.json ./
RUN npm install

# Copy app source code
COPY . .

# Build with Babel
RUN npm run build

# Expose port and start the app
EXPOSE 3000
CMD ["node", "dist/index.js"]
