#/bin/bash

echo "Building image $2 from $1"

sed "s/DockerBaseImage/$1/" Dockerfile.in > Dockerfile
docker image rm -f $2
docker build -t $2 .

