#! /bin/bash

SCRIPT=$(readlink -f "$0")
SCRIPTDIR=$(dirname "$SCRIPT")

# Create user
## Ask for username and password
if [ $(id -u) -eq 0 ]; then
        read -p 'Enter username: ' username
        read -sp 'Enter password: ' password
        while true; do
                egrep "^$username" /etc/passwd > /dev/null
                if [ $? -eq 0 ]; then
                        echo "$username exists!"
                        read -p 'Enter username: ' username
                        read -sp 'Enter Password: ' password
                        continue;
                else
                        # Add user to sudo group
                        adduser $username --gecos "" --disabled-login
                        echo "$username:$password" | chpasswd
                        usermod -aG sudo $username
                        break;
                fi
        done
        # Change to user
        su - $username
fi

# Ask if ssh key is wished for
while true; do
	read -p 'Do you want to add an ssh-key? ' yn
	case $yn in
		[Yy]* ) mkdir ~/.ssh
				### Ask for ssh-public-key
				read -p 'Enter a filename for the key: ' filename
				vi ~/.ssh/$filename
				### Insert public key into athorized
				~/.ssh/$filename > ~/.ssh/authorized_keys
				break;;
		[Nn]* ) exit;;
		* ) echo "Please answer yes or no.";;
	esac
done

# Update and upgrade apt
sudo apt-get update
sudo apt-get upgrade

# Install necessary programs
programs=(zsh zsh-syntax-highlighting bash-completion vim git htop tmux ranger powerline python g++ make gdb nmap curl)
sudo apt-get install -y ${programs[*]}

chsh -s /bin/zsh

# Setup git
## user.email and user.name
read -p 'Enter your git e-mail: ' email
read -p 'Enter your git name: ' name
git config --global user.mail $email
git config --global user.name $name
git config --global core.editor "vim"

#Clone dotfile repo and checkout correct branch
DOTFILES='~/.dotfiles'
git clone https://github.com/JanHanke/config_files.git $DOTFILES
cd $DOTFILES
git checkout -b virtual

# Make directory for manually updated packages and install them
mkdir ~/packages
cd ~/packages
## radare2 (Manual installation)
git clone https://github.com/radare/radare2.git
./radare2/sys/install.sh


# Install oh-my-zsh and copy config files
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
cp -pf $DOTFILES/.zshrc ~
cp -pf $DOTFILES/.tmux.conf ~
cp -pf $DOTFILES/.vimrc ~

# Setup and update vim
vim -c 'PlugInstall'