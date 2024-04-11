Build image with `docker build . -t builder:latest`.

Run with 
```
docker run \
  -e DOCKER_USER=<dockerhub_username> \
  -e DOCKER_PASSWORD <dockerhub_password> \
  -v /var/run/docker.sock:/var/run/docker.sock \
  builder <github_repository> <dockerhub_repository>
```
