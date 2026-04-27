# Use Nginx to serve the static files
FROM nginx:alpine

# Copy the static files to the nginx html directory
COPY index.html /usr/share/nginx/html/
COPY style.css /usr/share/nginx/html/

# Expose port 80
EXPOSE 80

# The default command starts nginx
CMD ["nginx", "-g", "daemon off;"]
