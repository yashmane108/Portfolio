# Step 1: Use Nginx as the base image
FROM nginx:alpine

# Step 2: Set the working directory (optional but good practice)
WORKDIR /usr/share/nginx/html

# Step 3: Remove the default Nginx welcome page
RUN rm -rf ./*

# Step 4: Copy all files from your local repository to the container
# This includes index.html, CSS files, and any asset folders
COPY . .

# Step 5: Expose port 80
EXPOSE 80

# Step 6: Start Nginx
CMD ["nginx", "-g", "daemon off;"]
