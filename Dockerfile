# Use the official Nginx image as the base
FROM nginx:latest

# Remove the default server definition
RUN rm /etc/nginx/conf.d/default.conf

# Copy custom server configurations
COPY nginx.conf /etc/nginx/nginx.conf

# Copy the static content for app1 and app2
COPY app1/ /usr/share/nginx/html/app1/
COPY app2/ /usr/share/nginx/html/app2/

# Expose ports for each app
EXPOSE 8080 8090
