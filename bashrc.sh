# filename: bashrc.sh
# by: Abhay Gupta
# date: 20-11-28
# desc: linked shell script to .bashrc file in $HOME directory -- contains run commands executed _
# when terminal is launched


# Add following lines to the bashrc file, links bashrc to this script. 

### How to add: (simple)
# # replace .bashrc file in home directory
# mv ./bashrc.sh ~/.bashrc

## How to add: (Complex) 
# # Link to version controlled shell script -- in /dotfiles >
# # include .bashrc if it exists
# path="/mnt/c/Users/GuptaAb/OneDrive - Lam Research/Documents/cloud_drive/sys-tools/dotfiles/"
# file="bashrc.sh"
# if [ -f "$path$file" ]; then
#            source "$path$file"
# fi

# Change display value
export DISPLAY=localhost:0.0

### Change current directory
# cd "/mnt/c/Users/GuptaAb/OneDrive - Lam Research/Documents/cloud_drive/" # global path
cd "$path/../../" # change to Google Drive home directory # relative path

### Color Scheme
# 31  = red
# 32  = green
# 33  = orange
# 34  = blue
# 35  = purple
# 36  = cyan
# 37  = grey

# Change folder colors:
LS_COLORS=$LS_COLORS:'ow=1;36:ex=1;33:tw=1;36;4:';
export LS_COLORS

# Default primary prompt variable for terminal colors
oldps1="$PS1"
# PS1 = '\[\e]0;\u@\h: \w\a\]${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '

PS1='\[\e]0;\u@\h: \w\a\]${debian_chroot:+($debian_chroot)}\
\[\e[1;31m\]\u\
\[\e[1;97m\]@\
\[\e[1;97m\]\h\
\[\e[1;97m\]:\
\[\e[1;31m\]\w\
\[\e[1;97m\]\$ '
