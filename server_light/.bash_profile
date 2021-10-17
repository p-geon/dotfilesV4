# <login>
# --> ~/.bash_profile
# ---->  ~/.bashrc
# ------> ~/.bash_aliases
# --> loading ~/bin
# --> loading ~/.local/bin

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi


# ==========================================
## cd -> cd + ls
cdls ()
{
  \cd "$@" && ls
}
alias cd="cdls"

# ==========================================
# passive settings
## exclude evil editor "NANO"
export EDITOR=vim
