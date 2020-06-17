echo $DOCKER_LOGIN
circleci local execute --job build

circleci local execute --job build-and-push \
  -e DOCKER_LOGIN=$DOCKER_LOGIN \
  -e DOCKER_PASSWORD=$DOCKER_PASSWORD
