# for grep 
# A | grep hoge
alias A="cat ~/.bash_aliases"

# --------------------
# Directories
# --------------------
alias lllll="ls"
alias l="ls"
alias sl="ls"
alias ll="ls -l"
alias la="ls -la"
alias lt="ls -T"
#alias T="exa -T --color=auto --icons"
alias n="ls -l | wc -n"
alias pw="pwd"

alias Td="tree -d -L 2 ./"
alias T1d="tree -d -L 1 ./"
alias T2d="tree -d -L 2 ./"
alias T3d="tree -d -L 3 ./"
alias T1="tree -L 1 ./"
alias T2="tree -L 2 ./"
alias T3="tree -L 3 ./"
alias TT="tree -d -L 2 ~/"
alias TTT="tree -d -L 3 ~/"

# --------------------
# cd variant
# --------------------
alias ~="cd ~/"
alias .="ls"
alias ..="cd ../"
alias ...="cd ../../"
alias ....="cd ../../../"
alias .....="cd ../../../../"
alias .1="cd ../"
alias .2="cd ../../"
alias .3="cd ../../../"
alias .4="cd ../../../../"
alias .5="cd ../../../../../"
alias ,="cd -"

# --------------------
# git for grep
# --------------------
alias gaccount="git config user.name && git config user.email"
## add
alias gad="git add -A --dry-run" #pre-check without adding
alias ga="git add"
alias gaa="git add -A" #all
alias gau="git add -u" #exclude untrack files
alias gap="git add -p" #patch
alias unadd="git reset --mixed HEAD" # revert add
## commit
alias gc="git commit -m"
alias gam="git commit --amend"
alias uncommit="git reset --soft HEAD^" # revert commit
## pull/push
alias gpl="git pull origin main"
alias gp="git push"
alias main="git push origin main"
alias master="git push origin master"
alias defaultmain="git config --global init.defaultBranch main"
alias master2main="git branch -m master main && git push -u origin main"
alias gacp="git add -A && git commit -m 'update' && git push origin main"
## branch
alias gb="git branch"
alias gout="git checkout"
alias merge="git merge --squash"
alias gmastermain="git branch -m master main"
alias gdeloriginbranch="git push --delete origin" # + branchname
## show & logging
alias gl="git log --oneline"
alias gg="git log --graph --all --format='%x09%an%x09%h %d %s'"
alias ggg="git log --graph --date=short --decorate=short --pretty=format:'%Cgreen%h %Creset%cd %Cblue%cn %Cred%d %Creset%s'"
alias gs="git status"
alias gss="git status -s"
alias gshow="git log --name-status HEAD^..HEAD" # show last commit status & files
## config
alias gcl="git config --list"
alias gswap="git stash -u && git checkout -b swap && git stash pop"

# --------------------
# others
# --------------------
# specific
alias dud="du -d 2 -m"
alias heavy-search="du -ah ./ | sort -rh | head -5"

# OS-utils
alias show-architecture="uname -moi"
alias show-os="cat /etc/os-release"

# basic-commands
alias q="exit"
alias p="pwd"
alias reload="exec bash -l"
