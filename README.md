# termux-tools-kali-Ant's-Build.v1.2
Installation of various operating systems such as Ubuntu, Kali Linux and Debian

| Name       | Install Command | Run Command |
|------------|-----------------|-------------|
| Kali Linux | 3               | 6           |
| Ubuntu     | 1               | 4           |
| Debian     | 2               | 5           |
| Exit       | -               | 0           |

# Installation Steps
There Are A Few Steps Before You Can Use This Tool Pack

Update Your Repositories with pkg update And pkg upgrade
Install Git So You Can Download This Tool pkg install git
Clone This Repo git clone [https://github.com/pipX-ux-wizard/termux-tools-kali-ubuntu/edit/pipX-ux-wizard-patch-2.11/README.md]
Move To The Directory Of The Repo 
~cd HOME/startup-setup.sh/
bin/data/data/com.termux/
files/usr/bin/

Create ~/HOME/startup-setup.sh/bin/data/data/com.termux
/files/usr/bin/

Navigation Menu

Code
Pull requests
Actions
Jump to bottom
Kalispell-[$]-[#] install=âœ“termux #1
 Merged
pipX-ux-wizard merged 1 commit into main from pipX-ux-wizard-patch-2.11  1 hour ago
 Merged
Kalispell-[$]-[#] install=âœ“termux
#1
pipX-ux-wizard merged 1 commit into main from pipX-ux-wizard-patch-2.11  1 hour ago
Conversation 1
Commits 1
Checks 0
Files changed 3
Conversation
pipX-ux-wizard
@pipX-ux-wizard pipX-ux-wizard commented 1 hour ago â€¢ 
apt install git
git clone https://gitlab.com/st42/termux-sudo

cd termux-sudo su

cat sudo > /data/data/com.termux/files/usr/bin/sudo

chmod 700 /data/data/com.termux/files/usr/bin/sudo

sudo dpkg --force-architecture -i
.deb

###############################

$ termux-setup-storage

Update Your Repositories with pkg update
And pkg upgrade
Install Git So You Can Download This
Toolpkg install git
Clone This Repo git clone https://github.com/pipX-ux-wizard
/termux-tools-kali-ubuntu/pull/1
Move To The Directory Of The Repocd
termux-tools-kali-ubuntu
Give The Bash File Execute Permissionschmod +x BNG.sh
Done! Just Runbash BNG.sh

###############################

git clone #1

Merged
#1
#1
pipX-ux-wizard merged 1 commit into main from pipX-ux-wizard-patch-2.11 1 hour ago
Conversation 1
Commits 1
Checks 0
Files changed 3
Conversation
pipX-ux-wizard
@pipX-ux-wizard pipX-ux-wizard commented 1 hour ago â€¢
gh repo clone pipX-ux-wizard/termux-tools-kali-ubuntu

$ git init git remote add origin https:
//github.com/
pipX-ux-wizard/
Kalispell-[$]-[#] install=âœ“termux

Kalispell-[$]-[#] install:=âœ“Termux

LABS-MARKER-1

bash.bashrc.txt

#!/data/data/com.termux/files/usr/bin/bash

ANSI Colors (FG & BG)
RED="$(printf '\033[31m')" GREEN="$(printf '\033[32m')" ORANGE="$(printf '\033[33m')" BLUE="$(printf '\033[34m')"
MAGENTA="$(printf '\033[35m')" CYAN="$(printf '\033[36m')" WHITE="$(printf '\033[37m')" BLACK="$(printf '\033[30m')"
REDBG="$(printf '\033[41m')" GREENBG="$(printf '\033[42m')" ORANGEBG="$(printf '\033[43m')" BLUEBG="$(printf '\033[44m')"
MAGENTABG="$(printf '\033[45m')" CYANBG="$(printf '\033[46m')" WHITEBG="$(printf '\033[47m')" BLACKBG="$(printf '\033[40m')"

Reset terminal colors
reset_color() {
printf '\033[37m'
}

Script Termination
exit_on_signal_SIGINT() {
{ printf "${RED}\n\n%s\n\n" "[!] Program Interrupted." 2>&1; reset_color; }
exit 0
}

exit_on_signal_SIGTERM() {
{ printf "${RED}\n\n%s\n\n" "[!] Program Terminated." 2>&1; reset_color; }
exit 0
}

trap exit_on_signal_SIGINT SIGINT
trap exit_on_signal_SIGTERM SIGTERM

Update, X11-repo, Program Installation
_pkgs=(curl fsmon git openssl-tool startup-notification termux-api vim make wget zsh librsvg nodejs yarn build-essential bash-completion build-essential binutils pkg-config python nodejs-lts gnupg ndk-sysroot)

setup_base() {
echo -e ${RED}"\n[] Installing Visual Studio Code..."
echo -e ${CYAN}"\n[] Updating Termux Base... \n"
{ reset_color; pkg autoclean; pkg update; pkg upgrade -y; }
echo -e ${CYAN}"\n[] Enabling Termux repo... \n"
{
reset_color;
pkg install -y x11-repo;
pkg install -y unstable-repo;
pkg install -y game-repo;
pkg install -y science-repo;
pkg install -y tur-repo;
}
echo -e ${CYAN}"\n[] Update repo... \n"
{
pkg update;
pkg upgrade -y;
}
echo -e ${CYAN}"\n[] Installing required programs... \n"
for package in "${_pkgs[@]}"; do
{ reset_color; pkg install -y "$package"; }
_ipkg=$(pkg list-installed $package 2>/dev/null | tail -n 1)
_checkpkg=${_ipkg%/}
if [[ "$_checkpkg" == "$package" ]]; then
echo -e ${GREEN}"\n[*] Package $package installed successfully.\n"
continue
else
{ pkg autoclean; pkg update; pkg upgrade -y; }
echo -e ${RED}"\n[!] Error installing $package, Terminating...\n"
echo -e ${MAGENTA}"\n[!] Run pkg upgrade -y and ./setup.sh agian \n"
{ reset_color; exit 1; }
fi
done
reset_color
}

Install ZSH
install_zsh() {
{ echo ${ORANGE}" [] Installing ZSH..."${CYAN}; echo; }
if [[ -f $PREFIX/bin/zsh ]]; then
{ echo ${GREEN}" [] ZSH is already Installed!"; echo; }
else
{ pkg update -y; pkg install -y zsh; }
(type -p zsh &> /dev/null) && { echo; echo ${GREEN}" [*] Succesfully Installed!"; echo; } || { echo; echo ${RED}" [!] Error Occured, ZSH is not installed."; echo; reset_color; exit 1; }
fi
}

Setup OMZ and Termux Configs
setup_omz() {

backup previous termux and omz files
echo -e ${GREEN}"[] Setting up OMZ and termux configs..."
omz_files=(.oh-my-zsh .termux .zshrc)
for file in "${omz_files[@]}"; do
echo -e ${CYAN}"\n[] Backing up $file..."
if [[ -f "$HOME/$file" || -d "$HOME/$file" ]]; then
{ reset_color; mv -u ${HOME}/${file}{,.old}; }
else
echo -e ${MAGENTA}"\n[!] $file Doesn't Exist."
fi
done

installing omz
echo -e ${CYAN}"\n[] Installing Oh-my-zsh... \n"
{ reset_color; git clone https://github.com/robbyrussell/oh-my-zsh.git --depth 1 $HOME/.oh-my-zsh; }
cp $HOME/.oh-my-zsh/templates/zshrc.zsh-template $HOME/.zshrc
sed -i -e 's/ZSH_THEME=./ZSH_THEME="aditya"/g' $HOME/.zshrc
sed -i -e 's/ZSH_THEME="robbyrussell"/ZSH_THEME="agnoster"/g' $HOME/.zshrc
sed -i -e 's|# export PATH=.*|export PATH=$HOME/.local/bin:$PATH|g' $HOME/.zshrc

ZSH theme
cat > $HOME/.oh-my-zsh/custom/themes/aditya.zsh-theme <<- EOF

Default OMZ theme
if [[ "$USER" == "root" ]]; then
PROMPT="%(?:%{$fg_bold[red]%}ï„…%{$fg_bold[yellow]%}ï„…%{$fg_bold[red]%}ï„… :%{$fg_bold[red]%}ï„…ï„…ï„… )"
PROMPT+='%{$fg[cyan]%}ï» %c%{$reset_color%} $(git_prompt_info)'
else
PROMPT="%(?:%{$fg_bold[red]%}ï„…%{$fg_bold[green]%}ï„…%{$fg_bold[yellow]%}ï„… :%{$fg_bold[red]%}ï„…ï„…ï„… )"
PROMPT+='%{$fg[cyan]%}ï» %c%{$reset_color%} $(git_prompt_info)'
fi
ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[blue]%}ï„“ git:(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}âœ—"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"
EOF

Append some aliases
cat >> $HOME/.zshrc <<- EOF
#------------------------------------------
alias l='ls -lh'
alias ll='ls -lah'
alias la='ls -a'
alias ld='ls -lhd'
alias p='pwd'
#alias rm='rm -rf'
alias u='cd $PREFIX'
alias h='cd $HOME'
alias :q='exit'
alias grep='grep --color=auto'
alias open='termux-open'
alias lc='lolcat'
alias xx='chmod +x'
alias rel='termux-reload-settings'
#------------------------------------------

SSH Server Connections
linux (Arch)
alias arch='ssh UNAME@IP -i ~/.ssh/id_rsa.DEVICE'

linux sftp (Arch)
alias archfs='sftp -i ~/.ssh/id_rsa.DEVICE UNAME@IP'
EOF

configuring termux
echo -e ${CYAN}"\n[*] Configuring Termux..."
reset_color
if [[ ! -d "$HOME/.termux" ]]; then
mkdir $HOME/.termux
fi

button config
cat > $HOME/.termux/termux.properties <<- EOF
extra-keys = [ \
['ESC','|', '/', '~','HOME','UP','END'], \
['CTRL', 'TAB', '=', '-','LEFT','DOWN','RIGHT'] \
]
EOF

change shell and reload configs
{ chsh -s zsh; termux-reload-settings; termux-setup-storage; }
if [[ ! -d "$HOME/Downloads" ]]; then
mkdir $HOME/Downloads
fi
if [[ ! -d "$HOME/Templates" ]]; then
mkdir $HOME/Templates
fi
if [[ ! -d "$HOME/Public" ]]; then
mkdir $HOME/Public
fi
if [[ ! -d "$HOME/Documents" ]]; then
mkdir $HOME/Documents
fi
if [[ ! -d "$HOME/Pictures" ]]; then
mkdir $HOME/Pictures
fi
if [[ ! -d "$HOME/Video" ]]; then
mkdir $HOME/Video
fi
if [[ ! -d "$HOME/Pictures/backgrounds" ]]; then
mkdir $HOME/Pictures/backgrounds
fi
}

Install adb
install_adb() {
echo -e ${GREEN}"\n[] install ADB file..."
echo -e ${CYAN}"\n[] Download from github... "
reset_color
{ curl https://github.com/MasterDevX/Termux-ADB/raw/master/InstallTools.sh -o InstallTools.sh; bash InstallTools.sh; rm InstallTools.sh;}
}

Install Visual Code
install_vsc_repo() {
echo -e ${GREEN}"\n[] install Visual Sutdio Code Source..."
reset_color
{
wget https://packages.microsoft.com/keys/microsoft.asc -q;
apt-key add microsoft.asc;
gpg --dearmor microsoft.asc > packages.microsoft.gpg;
cp -rf packages.microsoft.gpg $PREFIX/etc/apt/trusted.gpg.d/
rm -rf microsoft.asc;
rm -rf packages.microsoft.gpg;
}
echo -e ${GREEN}"\n[] install GCC Source..."
reset_color
{
wget https://its-pointless.github.io/setup-pointless-repo.sh -q;
chmod +x setup-pointless-repo.sh;
bash setup-pointless-repo.sh;
rm setup-pointless-repo.sh;
}
}

configure_vsc(){
echo -e ${GREEN}"\n[] Configure Visual Studio Code...\n"
reset_color
{ pkg install code-server; }
echo -e ${GREEN}"\n[] Configure port and password...\n"
reset_color
{
wget https://raw.githubusercontent.com/afonsoft/termux-vsc/main/config.yaml -q;
cp -rf config.yaml ~/.config/code-server/config.yaml;
}
}

setup_net() {
echo -e ${GREEN}"[*] Install Mono and DotNet... \n"
reset_color
{
pkg update;
pkg upgrade -y;
pkg install mono -y;
wget https://dotnet.microsoft.com/download/dotnet/scripts/v1/dotnet-install.sh -q;
chmod +x dotnet-install.sh;
./dotnet-install.sh -c LTS;
./dotnet-install.sh -c STS;
echo 'export DOTNET_ROOT=$HOME/.dotnet' >> ~/.bashrc
echo 'export PATH=$PATH:$DOTNET_ROOT:$DOTNET_ROOT/tools' >> ~/.bashrc
}

}
setup_finaly() {
echo -e ${ORANGE}"\n[] Installation successfully completed....."
echo -e ${GREEN}"\n[] Default Port is: $RED 8091 "
echo -e ${GREEN}"\n[] Default password is: $RED 123qwe "
echo -e ${GREEN}"[] Run $RED code-server $GREEN for start."
}

install_vsc() {
clear
setup_base
clear
install_zsh
setup_omz
install_vsc_repo
setup_net
install_adb
configure_vsc
setup_finaly
}

Main
install_vsc

/data/local/tmp

bash 
     sudo nano /etc/apt/sources.list

     
     # Add user.
useradd -m anton
# -m creates a home directory for the user.

# Set Password.
passwd anton

# Set user group to sudo.
usermod -a -G sudo anton
# -a option to add and â€˜-G sudoâ€™ means to add the user to the sudo group.

chsh -s /bin/bash anton
# chsh command is used to change the login shell for a user.
     
     
apt-get update && apt-get upgrade -y

apt install git -y
git clone https://github.com/Dark-Legends/Terminal-backup
cd Terminal-backup && chmod +x
terminal-backup 



./terminal-backup

Default Port is:  8091

[*] Default password is:  123qwe
[*] Run  code-server  for start.



     
     
     
     
     
     
     # ~/install-kali-termux
### Custom Kali installation based on the minimal file-system of the official nethunter repositories from Offensive Security, in termux with a rooted device.
### More functions were added than in the script provided by offensive security and I will add more when the time comes.

<p align="center">
  <img width="460" height="300" src="https://github.com/pipX-ux-wizard/Kalispell~[$]~[#] install=âœ“termux/install-kali-termux/raw/master/Annotation%202021-08-24%20155445.png">
</p>


#### Open termux and paste this code to install kali on it:
```bash
apt update && apt install wget -y
wget -O install_kali https:
//github.com/
pipX-ux-wizard/
Kalispell~[$]~[#] install=âœ“termux
chmod +x install_kali
./install_kali
```#### ~/startkali.sh

git clone #1

Merged
#1
#1
pipX-ux-wizard merged 1 commit into main from pipX-ux-wizard-patch-2.11 1 hour ago
Conversation 1
Commits 1
Checks 0
Files changed 3
Conversation
pipX-ux-wizard
@pipX-ux-wizard pipX-ux-wizard commented 1 hour ago â€¢
gh repo clone pipX-ux-wizard/termux-tools-kali-ubuntu

$ git init git remote add origin https:
//github.com/
pipX-ux-wizard/
Kalispell-[$]-[#] install=âœ“termux


## NEW:
### Support for x86 and ARM64 and AMD64 added; now you can install kali in an Android emulator!


~/startkali.sh



# Screenshots

![10013284](https://github.com/pipX-ux-wizard/termux-tools-kali-ubuntu/edit/pipX-ux-wizard-patch-2.11/README.md))

# new version v1.2.0
