#!/bin/bash
DEBIAN_FRONTEND=noninteractive
apt update && apt install -y neofetch wget kitty vim nano zsh openvpn tmux git
runuser -l osi -c 'sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended'
#'sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended'
chsh -s /usr/bin/zsh osi
wget http://10.0.2.13/.zshrc /home/osi/.zshrc
git clone https://github.com/stevemcilwain/quiver.git /home/osi/.oh-my-zsh/custom/plugins/quiver &&  \
  git clone https://github.com/jhwohlgemuth/zsh-pentest.git /home/osi/.oh-my-zsh/custom/plugins/zsh-pentest && \
  git clone https://github.com/zsh-users/zsh-autosuggestions.git /home/osi/.oh-my-zsh/custom/plugins/zsh-autosuggestions && \
  git clone https://github.com/zsh-users/zsh-syntax-highlighting.git /home/osi/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
#echo "xuser ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers
runuser -l osi -c 'curl -sLf https://spacevim.org/install.sh | bash'
#curl -sLf https://spacevim.org/install.sh | bash
wget http://10.0.2.13/tmux.conf /home/osi/.tmux.conf
wget http://10.0.2.13/init.toml /home/osi/.SpaceVim/init.toml
