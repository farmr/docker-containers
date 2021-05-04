FROM ubuntu:latest
LABEL maintainer="FARMR Stakepool operators (support@farmr.one)"

# Update and install the required packages
ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get update \
 && apt-get install -y \    
    wget \
    git \
    npm \
    nano \
    tmux \
    python3 \
    python3-pip \
 && rm -rf /var/lib/apt/lists/*

# Setup default user environment
ARG USERNAME="farmrone"
ARG USERID="1000"
ARG GROUPID="1024"
RUN groupadd -g $GROUPID -r $USERNAME \
 && useradd --no-log-init -r --gid $GROUPID -u $USERID $USERNAME \
 && mkdir /home/$USERNAME
RUN chown -R ${USERNAME}:${USERNAME} /home/${USERNAME} \
 && chown -R ${USERNAME}:${USERNAME} /usr/local \
 && echo ${USERNAME}:${USERNAME} | chpasswd 
USER ${USERNAME}
