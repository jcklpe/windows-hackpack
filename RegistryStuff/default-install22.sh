TITLE="Ubuntu Post-Install Script"

sudo apt update && sudo apt upgrade
sudo apt-get install ubuntu-restricted-extras

sudo apt-get install -y zsh
sudo apt-get install -y --allow-unauthenticated powershell


# Set up symlinks to share files across computers
sudo chown $USER ~/.config
rm ~/.profile
rm ~/.bashrc
rm -rf ~/.ssh
mkdir ~/.kube
rm ~/.kube/config
rm -rf ~/.kube/configs
ln -s /mnt/c/Users/$USER/Documents/Configs/.profile ~/.profile
ln -s /mnt/c/Users/$USER/Documents/Configs/.bashrc ~/.bashrc
ln -s /mnt/c/Users/$USER/Documents/Configs/.ssh ~/.ssh
ln -s /mnt/c/Users/$USER/Documents/Configs/.oh-my-zsh ~/.oh-my-zsh


# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k
rm ~/.zshrc
ln -s /mnt/c/Users/$USER/Documents/Configs/.zshrc ~/.zshrc

cp  ~/.zshrc ~/.zshrc /mnt/c/Users/$USER/Documents/Configs/.zshrc 
