# Build image
$ docker build -f Dockerfile -t docker-spa .

# Run container
$ docker run --rm -d -p 80:80/tcp docker-spa:latest

# Open url: 
http://localhost/

# Stop and remove container

# Reset image
$ docker rmi -f docker-spa

# bonus
$ docker container ls
$ docker exec -it c21bbfbc5990 bash
root@c21bbfbc5990:/# ls
bin  boot  dev  docker-entrypoint.d  docker-entrypoint.sh  etc  home  lib  lib64  media  mnt  opt  proc  root  run  sbin  srv  sys  tmp  usr  var
