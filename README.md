# Build image
$ docker build -f Dockerfile -t docker-spa .

# Run container
$ docker run --rm -d -p 80:80/tcp docker-spa:latest

# Open url: 
http://localhost/

# Stop and remove container
$ docker stop docker-spa
$ docker rm docker-spa

# Reset image
$ docker rmi -f docker-spa

# Rebuild iamge
$ docker build -t docker-spa .