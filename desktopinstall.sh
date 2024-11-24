read -p "$(tput setaf 6)Note you need the discord .deb file downloaded, would you like to proceed? (y/n): $(tput sgr0)" proceed


# Installing Brave
sudo apt install curl
sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list
sudo apt update
sudo apt install brave-browser

# install git
sudo apt install git

#remove firefox
sudo snap remove firefox
sudo apt purge firefox

#install nvim and remove nano
sudo snap install nvim --classic
sudo apt remove nano

#install spotify and spicetify
sudo chmod a+wr /opt/spotify
sudo chmod a+wr /opt/spotify/Apps -R
curl -sS https://download.spotify.com/debian/pubkey_6224F9941A8AA6D1.gpg | sudo gpg --dearmor --yes -o /etc/apt/trusted.gpg.d/spotify.gpg
echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt-get update && sudo apt-get install spotify-client
curl -fsSL https://raw.githubusercontent.com/spicetify/cli/main/install.sh | sh

#NEOFETCH!!!
sudo apt install neofetch

#Brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

#ohmyposh no theme
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
curl -s https://ohmyposh.dev/install.sh | sudo bash -s -- -d ~/bin
oh-my-posh font install OpenDyslexic

#discord
cd ~/Downloads/
sudo dpkg -i discord-0.0.75.deb
sudo apt-get install -f
cd ~

#hyprland
git clone -b 24.04 --depth 1 git clone -b 24.10 --depth=1  https://github.com/JaKooLit/Ubuntu-Hyprland.git ~/Ubuntu-Hyprland
 ~/Ubuntu-Hyprland-24.04
cd ~/Ubuntu-Hyprland-24.04
chmod +x install.sh
./install.sh
