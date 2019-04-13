#!/usr/bin/env bash

#====================================================
#== Common
#====================================================
apt-get -y update
apt-get -y install \
  colordiff dos2unix gettext graphviz imagemagick \
  git-core subversion ngrep wget unzip zip \
  whois vim mcrypt bash-completion zsh \
  htop curl vim iotop





#====================================================
#== Docker
#====================================================
curl -s "https://get.docker.com/" | bash






#====================================================
#== Docker Composer
#====================================================
curl -L "https://github.com/docker/compose/releases/download/1.24.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose






#====================================================
#== Oh My ZSH!
#====================================================
if [ ! -d "/home/vagrant/.oh-my-zsh" ]; then
  su - vagrant -c 'git clone git://github.com/robbyrussell/oh-my-zsh.git /home/vagrant/.oh-my-zsh'
  su - vagrant -c 'cp /home/vagrant/.oh-my-zsh/templates/zshrc.zsh-template /home/vagrant/.zshrc'
fi
