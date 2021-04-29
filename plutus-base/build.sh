if [ -z "$1" ]; then
    TAG="latest"
else
    TAG=$1
fi
docker login
docker build -t farmrone/plutus-base:$TAG .
docker push farmrone/plutus-base:$TAG
