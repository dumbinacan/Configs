# ~/.bash_profile

#TODO learn how to use the AUR suckless repos.
# for now I have modified Makefile to mv bin to $HOME/.suckless/bin
suckless=$HOME/.suckless/bin
if [ -d "$suckless" ]; then
  export PATH="${PATH}:$suckless"
fi
cargo=$HOME/.cargo/bin
if [ -d "$cargo" ]; then
  export PATH="${PATH}:$cargo"
fi


if [ -z "${DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
  exec startx
fi
