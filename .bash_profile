alias ll="ls -al"
alias gw="./gradlew"
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx
source ~/.git-completion.bash
source ~/.bashrc
export PATH=~/anaconda/bin:$PATH
#alias code="/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code"
#alias gvim="/Applications/MacVim.app/Contents/bin/gvim"
#alias vim="gvim"
alias yarnblitz='(find . -type d -name 'node_modules' -maxdepth 3 | xargs rm -rf) && yarn'
alias cleanbuild='lerna run clean --parallel && yarn && yarn build'
#alias dockerblitz='docker rm $(docker ps -a -q)'
#alias dockerstop='docker stop $(docker ps -a -q)'
parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}


COLOR_RED="\033[0;31m"
COLOR_YELLOW="\033[0;33m"
COLOR_GREEN="\033[0;32m"
COLOR_OCHRE="\033[38;5;95m"
COLOR_BLUE="\033[0;34m"
COLOR_WHITE="\033[0;37m"
COLOR_RESET="\033[0m"

function git_color {
  local git_status="$(git status 2> /dev/null)"

  if [[ ! $git_status =~ "working directory clean" ]]; then
    echo -e $COLOR_RED
  elif [[ $git_status =~ "Your branch is ahead of" ]]; then
    echo -e $COLOR_YELLOW
  elif [[ $git_status =~ "nothing to commit" ]]; then
    echo -e $COLOR_GREEN
  else
    echo -e $COLOR_OCHRE
  fi
}


export PS1="[\A, \u,\$(parse_git_branch)] \w$ "
alias did="vim +'normal Go' +'r!date' ~/did.txt"


export PATH="/usr/local/bin/mongodb/bin:$PATH"
export PATH="/Library/Frameworks/R.framework/Resources/bin:$PATH"
export JAVA_HOME=$(/usr/libexec/java_home)
#ssh-add -K ~/.ssh/id_rsa_gh 2> /dev/null

