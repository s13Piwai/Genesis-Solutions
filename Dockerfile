FROM nginx:alpine

# Remove the default Nginx website
RUN rm -rf /usr/share/nginx/html/*

# Copy the Genesis Solutions website into Nginx
COPY index.html /usr/share/nginx/html/index.html

# Expose the website port
EXPOSE 80

# Start Nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]
