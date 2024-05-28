[[ -r ~/.bashrc ]] && . ~/.bashrc
  GUIX_PROFILE="$HOME/.config/guix/current"
. "$GUIX_PROFILE/etc/profile"

if [ -z "$(which emacs)" ] ; then
    export EDITOR=$(which emacs)
fi
export CC=gcc CXX=g++
export LC_CTYPE=en_US.UTF-8

export PATH="$HOME/sccache/target/release:$PATH"
if [ -d "$HOME/.emacs.d/bin" ] ; then
    export PATH="$HOME/.emacs.d/bin:$PATH"
fi
if [ -d "$HOME/.local/bin" ] ; then
    export PATH="$PATH:$HOME/.local/bin"
fi
if [ -d "$GEM_HOME/bin" ] ; then
    export PATH="$PATH:$GEM_HOME/bin"
fi