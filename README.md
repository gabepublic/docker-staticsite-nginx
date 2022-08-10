# docker-staticsite-nginx

Docker application for a very simple static site (html, css, and JS) 
running on nginx.

## Prerequisite

- Docker Engine - see [Install Docker Engine on Ubuntu](https://docs.docker.com/engine/install/ubuntu/)


## Setup

- Clone this repo

- The following tasks can be performed manually or by running the scripts
  included with this repo.

- To run the scripts, you need to make them executable first
```
$ cd <project_folder>/docker-staticsite-nginx
$ chmod +x *.sh
```

- [Optional] To do it manually, copy the command inside the script file

## Develop

- Build docker image
```
$ cd <project_folder>/docker-staticsite-nginx
$ ./build-image.sh

$ docker images
REPOSITORY                    TAG                 IMAGE ID       CREATED         SIZE
gabepublic/staticsite-nginx   0.1.0-linux-amd64   05721d44f4ef   5 minutes ago   23.6MB
nginx                         alpine              e46bcc697531   2 weeks ago     23.5MB
```

- Run the docker application
```
$ cd <project_folder>/docker-staticsite-nginx
$ ./run.sh

$ docker ps
CONTAINER ID   IMAGE                                           COMMAND                  CREATED         STATUS         PORTS                                   NAMES
88ee228a80f6   gabepublic/staticsite-nginx:0.1.0-linux-amd64   "nginx -g 'daemon of…"   6 seconds ago   Up 5 seconds   0.0.0.0:8080->80/tcp, :::8080->80/tcp   static
```

- Stop the docker application
```
$ docker stop <CONTAINER-ID>

$ docker ps
CONTAINER ID   IMAGE     COMMAND   CREATED   STATUS    PORTS     NAMES
```

- Deploy to Docker Hub
```
$ docker login
#provide Docker Hub id and password
WARNING! Your password will be stored unencrypted in /root/.docker/config.json.
Configure a credential helper to remove this warning. See
https://docs.docker.com/engine/reference/commandline/login/#credentials-store

$ docker push gabepublic/staticsite-nginx:0.1.0-linux-amd64
[...]
0.1.0-linux-amd64: digest: sha256:e1301bcc996e0e975fa083eb79ab0d970018ea809b1bc76f0a10b10d2c98ae64 size: 1984

$ docker logout
```


## CLEANUP

- Delete docker image
```
$ docker image rm <IMAGE-ID>
```

## References

- https://docker-curriculum.com/

- [How to Serve a Static App with nginx in Docker](https://typeofnan.dev/how-to-serve-a-static-app-with-nginx-in-docker/)