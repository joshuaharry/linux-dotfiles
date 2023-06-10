#!/bin/sh
export PATH="$HOME"/bin:\
"$HOME"/.local/bin:\
"$HOME"/.n/bin:\
"$HOME"/.local/node/bin:\
"$HOME"/.pyenv/bin:\
"$HOME"/.pyenv/versions/3.11.3/bin:\
"$HOME"/.rbenv/bin:\
"$HOME"/.rbenv/versions/3.2.2/bin:\
"$HOME"/.cargo/bin:\
/usr/local/sbin:\
/usr/local/bin:\
/usr/bin:\
/usr/bin/site_perl:\
/usr/bin/vendor_perl:\
/usr/bin/c

export ZDOTDIR="$HOME"/.config/zsh
export N_PREFIX="$HOME"/.n
eval "$(ssh-agent)"
ssh-add ~/.ssh/github
startx
