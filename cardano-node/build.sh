if [ -z "$1" ]; then
    TAG="latest"
else
    TAG=$1
fi
docker login
docker build -t farmrone/cardano-node:$TAG .
docker push farmrone/cardano-node:$TAG
