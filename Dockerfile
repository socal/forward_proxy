# the image we would be using
FROM nginx:latest

# copy our nginx configation file
COPY nginx.conf /etc/nginx/nginx.conf

# copy our certificate files
COPY ssl/nginx-selfsigned.crt /etc/nginx/ssl/nginx-selfsigned.crt
COPY ssl/nginx-selfsigned.key /etc/nginx/ssl/nginx-selfsigned.key

# Expose the port on which Nginx will listen
EXPOSE 443