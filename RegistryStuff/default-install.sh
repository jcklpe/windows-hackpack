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
ln -sr /mnt/c/Users/$USER/Documents/Configs/.profile ~/.profile
ln -sr /mnt/c/Users/$USER/Documents/Configs/.bashrc ~/.bashrc
ln -sr /mnt/c/Users/$USER/Documents/Configs/.ssh ~/.ssh
ln -sr /mnt/c/Users/$USER/Documents/Configs/.ssh ~/.ssh
ln -sr /mnt/c/Users/$USER/Documents/Configs/.config ~/.config
ln -sr /mnt/c/Users/$USER/Documents/Configs/.docker ~/.docker
ln -sr /mnt/c/Users/$USER/Documents/Configs/.dotnet ~/.dotnet
ln -sr /mnt/c/Users/$USER/Documents/Configs/.hyper_plugins ~/.hyper_plugins
ln -sr /mnt/c/Users/$USER/Documents/Configs/.p4qt ~/.p4qt
ln -sr /mnt/c/Users/$USER/Documents/Configs/.thumbnails ~/.thumbnails
ln -sr /mnt/c/Users/$USER/Documents/Configs/.VirtualBox ~/.VirtualBox
ln -sr /mnt/c/Users/$USER/Documents/Configs/.vscode ~/.vscode
ln -sr /mnt/c/Users/$USER/Documents/Configs/.fseventsd ~/.fseventsd
ln -sr /mnt/c/Users/$USER/Documents/Configs/.BPainter ~/.Bpainter
ln -sr /mnt/c/Users/$USER/Documents/Configs/.gitconfig ~/.gitconfig
ln -sr /mnt/c/Users/$USER/Documents/Configs/.hyper.js ~/.hyper.js
ln -sr /mnt/c/Users/$USER/Documents/Configs/.minttyrc ~/.minttyrc
ln -sr /mnt/c/Users/$USER/Documents/Configs/.node_repl_history ~/.node_repl_history
ln -sr /mnt/c/Users/$USER/Documents/Configs/.md ~/.md
ln -sr /mnt/c/Users/$USER/Documents/Configs/.editorconfig ~/.editorconfig


ln -sfr /mnt/c/Users/$USER/Documents/Configs/.hyper.js /mnt/c/Users/$USER/.hyper.js




# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k
rm ~/.zshrc
ln -sr /mnt/c/Users/$USER/Documents/Configs/.zshrc ~/.zshrc
