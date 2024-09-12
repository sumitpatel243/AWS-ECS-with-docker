# Step 1: Use a base image with Nginx
FROM nginx:alpine

# Step 2: Set the working directory to /usr/share/nginx/html
WORKDIR /usr/share/nginx/html

# Step 3: Remove the default Nginx index.html file
RUN rm -rf ./*

# Step 4: Copy the contents of the calculator folder to the Nginx web root directory
COPY calculator/ .

# Expose port 80
EXPOSE 80

# Start the Nginx server
CMD ["nginx", "-g", "daemon off;"]
