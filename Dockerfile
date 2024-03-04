# Use an official Node.js runtime as a base image
FROM node:20-alpine

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy package.json and yarn.lock to the working directory
COPY package.json yarn.lock ./

# Install the application dependencies
RUN yarn install

# Copy the entire application to the working directory
COPY . .

# Expose the port your app will run on
EXPOSE 3000

# Command to run your application in development mode
CMD ["yarn", "run", "start:dev"]
