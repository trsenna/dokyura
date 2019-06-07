#!/usr/bin/env bash

#====================================================
#== Common
#====================================================
export DEBIAN_FRONTEND=noninteractive
export APT_KEY_DONT_WARN_ON_DANGEROUS_USAGE=1

apt-get -y update
apt-get -y install \
  colordiff dos2unix gettext graphviz imagemagick \
  git-core subversion ngrep wget unzip zip \
  whois vim mcrypt bash-completion zsh \
  htop curl vim iotop





#====================================================
#== Docker
#====================================================
apt-get -y install \
  apt-transport-https ca-certificates curl \
  gnupg-agent software-properties-common

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -qq -
echo "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable" > /etc/apt/sources.list.d/docker.list

if [ ! -f "/usr/bin/docker" ]; then
  apt-get -y update
  apt-get -y install \
    docker-ce docker-ce-cli containerd.io

  usermod -aG docker vagrant
fi





#====================================================
#== Docker Composer
#====================================================
if [ ! -f "/usr/local/bin/docker-compose" ]; then
  wget https://github.com/docker/compose/releases/download/1.24.0/docker-compose-Linux-x86_64
  mv docker-compose-Linux-x86_64 /usr/local/bin/docker-compose
  chmod +x /usr/local/bin/docker-compose
fi
