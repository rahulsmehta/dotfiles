alias ll="ls -alh"
alias gw="./gradlew"
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx
source ~/.git-completion.bash
source ~/.bashrc
alias code="/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code"
alias yarnblitz='(find . -type d -name 'node_modules' -maxdepth 3 | xargs rm -rf) && yarn --ignore-engines'
alias cleanbuild='lerna run clean --parallel && yarn --ignore-engines && yarn build'
alias dockerblitz='docker rm $(docker ps -a -q)'
alias dockerstop='docker stop $(docker ps -a -q)'
alias git-purge='git branch --merged | grep -v "\*" | grep -v "master" | grep -v "develop" | grep -v "staging" | xargs -n 1 git branch -d'
parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}


export JAVA_HOME=$(/usr/libexec/java_home)

export PATH="${HOME}/.config/yarn/global/node_modules/.bin:$PATH"

export PATH="/usr/local/opt/scala@2.11/bin:$PATH"

# Powerline
function _update_ps1() {
    PS1=$(powerline-shell $?)
}

if [[ $TERM != linux && ! $PROMPT_COMMAND =~ _update_ps1 ]]; then
    PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"
fi
