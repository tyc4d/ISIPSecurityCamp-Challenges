# Use a base image with Node.js
FROM node:14-alpine

# Set the working directory
WORKDIR /app

# Copy the rest of the application code
COPY . /app


# Install dependencies
RUN npm install

EXPOSE 3000

# Start the nginx server
CMD ["npm","start"]