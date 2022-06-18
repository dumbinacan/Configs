# ~/.bash_profile

#TODO learn how to use the AUR suckless repos.
# for now I have modified Makefile to mv bin to $HOME/.suckless/bin
bin=$HOME/.suckless/bin
if [ -d "$bin" ]; then
  export PATH="${PATH}:$bin"
fi

if [ -z "${DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
  xrdb -merge .Xresources &
  exec startx
fi
