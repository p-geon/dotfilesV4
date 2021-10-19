# --------------------
# bash
# --------------------
alias A="cat ~/.bash_aliases"
alias S="A | grep"

# --------------------
# ls/exa + tree
# --------------------
alias lllll="ls"
# if use brew, uncomment below.
#alias ls="exa --group-directories-first --color=auto --icons"
alias l="ls"
alias sl="ls"
alias ll="ls -l"
alias la="ls -la"
alias lt="ls -T"

# tree variant
alias t2d="tree -d -L 2 ./"
alias t3d="tree -d -L 3 ./"
alias t2="tree -L 2 ./"
alias t3="tree -L 3 ./"
alias n="ls -l | wc -n"

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
# git
# --------------------
alias gaccount="git config user.name && git config user.email"
## add
alias gad="git add -A --dry-run" #pre-check without adding
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
# Docker
# --------------------
# Docker
alias di="docker images"
alias dp="docker ps -a"

alias drmi="docker images -f dangling=true -q | xargs docker rmi -f"
alias dstop="docker ps -a -q | xargs docker rm -f"
alias dclean="dstop && drmi"

# --------------------
# tmux
# --------------------
alias t="tmux"
alias ta="tmux a"

# --------------------
# others
# --------------------
## Python
alias ps-python="ps aux | grep python"
alias ci="conda info -e"
alias denva="direnv allow ."
alias sat="source activate tf"

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
alias sd360="sudo shutdown -h +360"
alias closer="(sleep 10000; sudo shutdown now) &"

# pytorch/GPU
alias gpucheck_pytorch="python -c 'import torch;print(torch.cuda.is_available(), torch.cuda.device_count());'"
alias gpucheck_tensorflow="python -c 'import tensorflow as tf;tf.test.is_gpu_available()'"

# watch command
alias wt="watch -n 10.0 tree -d -L 3"
alias wn="watch -n 2.0 nvidia-smi --query-gpu=temperature.gpu,utilization.gpu,memory.used,memory.free  --format=csv"
alias wnf="watch -n 2.0 nvidia-smi"
