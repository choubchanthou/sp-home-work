# Use a Node.js 14 Alpine image as the base
FROM node:latest

# Set the working directory to /app
WORKDIR /app/sp-home-work

# Copy the package.json and yarn.lock files
COPY package.json yarn.lock ./

# Install the dependencies
RUN yarn install

# Copy the rest of the source code
COPY . .

# # Build the application
# RUN yarn build

# # Expose the port 3000
# EXPOSE 3000

# # Start the application
# CMD ["yarn", "start"]
