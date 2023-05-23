# Base image with tag
FROM nginx:alpine as base

# Set the image name and tag as an ARG variable
ARG IMAGE_NAME=my-image001
ARG IMAGE_TAG=latest

# Copy the HTML and CSS files to the Nginx document root
COPY . /usr/share/nginx/html

# Expose the port
EXPOSE 80

# Start Nginx server
CMD ["nginx", "-g", "daemon off;"]

# Set the image name and tag as labels
LABEL image.name=$IMAGE_NAME
LABEL image.tag=$IMAGE_TAG

