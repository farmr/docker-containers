docker login
docker build -t farmrone/ubuntu-base:latest .
docker push farmrone/ubuntu-base:latest
# docker run -it farmrone/ubuntu-base /usr/bin/zsh
