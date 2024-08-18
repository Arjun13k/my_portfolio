# Use an official Nginx image as the base image
FROM nginx:alpine

# Copy the build output from the Flutter project to the Nginx HTML directory
COPY build/web /usr/share/nginx/html

# Expose port 80 to allow traffic to the web server
EXPOSE 80

# Start Nginx when the container is run
CMD ["nginx", "-g", "daemon off;"]
