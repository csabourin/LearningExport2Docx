# Use an official Node.js LTS runtime as a base image
FROM node:18.12.1

# Set working directory
WORKDIR /app

# Copy package definition files and install dependencies
COPY package*.json ./
RUN npm install

# Copy the rest of your app code
COPY . .

# Expose the port your Express server is listening on
# (Make sure your app uses process.env.PORT || 3000 so Cloud Run can override it)
EXPOSE 8080

# Start the application
CMD [ "node", "LearningExport2Docx.js" ]