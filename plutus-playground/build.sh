if [ -z "$1" ]; then
    TAG="latest"
else
    TAG=$1
fi
docker login
docker build -t farmrone/plutus-playground:$TAG .
docker push farmrone/plutus-playground:$TAG
