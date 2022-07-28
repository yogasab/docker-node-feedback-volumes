# Create an image
docker build -t (username)/node-feedback .

# Create container from image 
# Hard Coded ENV CLI
# docker run --env PORT=8000 -p 3000:8000 -d -v feedback:/app/feedback -v "%cd%":/app:ro -v /app/node_modules -v /app/temp --name node-feedback yogasab/node-feedback
# ENV file Command
docker run --env-file ./.env -p 3000:8000 -d -v feedback:/app/feedback -v "%cd%":/app:ro -v /app/node_modules -v /app/temp --name node-feedback yogasab/node-feedback