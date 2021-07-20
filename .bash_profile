export BASH_SILENCE_DEPRECATION_WARNING=1
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx

source ~/.git-completion.bash
source ~/.bashrc
alias ll="ls -alh"
alias watch="watch "
alias vim="gvim"

alias gw="./gradlew"
alias venv='source venv/bin/activate'
alias code="/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code"

alias k="kubectl"
alias tf="terraform"
alias klogs="stern --context simplywise-production "

alias yarnblitz='(find . -type d -name 'node_modules' -maxdepth 3 | xargs rm -rf) && yarn --ignore-engines'
alias rnblitz='rm -rf node_modules/ && yarn -D install && npx pod-install'
alias xccopy="~/.xccopy.bash"

alias cleanbuild='lerna run clean --parallel && yarn --ignore-engines && yarn build'
alias dockerblitz='docker rm $(docker ps -a -q)'
alias dockerstop='docker stop $(docker ps -a -q)'
alias git-purge='git branch --merged | grep -v "\*" | grep -v "master" | grep -v "develop" | grep -v "staging" | xargs -n 1 git branch -d'

alias ffastlane='bundle exec fastlane'

# SW Aliases
alias sw='cd ~/git/sw/simplywise'
alias sw-mobile='cd ~/git/sw/mobile'
alias sw-web='cd ~/git/sw/simplywise.com'

parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}


export JAVA_HOME=$(/usr/libexec/java_home -v 11)

export PATH="${HOME}/.config/yarn/global/node_modules/.bin:$PATH"
export PATH="/usr/local/opt/scala@2.11/bin:$PATH"
export PATH="/Users/rahulm/.local/bin:$PATH"

# PHP
export PATH="/usr/local/opt/php@7.4/bin:$PATH"
export PATH="/usr/local/opt/php@7.4/sbin:$PATH"

export LDFLAGS="-L/usr/local/opt/php@7.4/lib"
export CPPFLAGS="-I/usr/local/opt/php@7.4/include"

# Composer
export PATH="$HOME/.composer/vendor/bin:$PATH"


# Anaconda
__conda_setup="$('/Users/rahulm/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/rahulm/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/rahulm/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/rahulm/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# Activate /opt/anaconda3 env
conda activate /opt/anaconda3


# Android
export ANDROID_SDK=/Users/rahulm/Library/Android/sdk
export ANDROID_SDK_ROOT=/Users/rahulm/Library/Android/sdk

export PATH=/Users/rahulm/Library/Android/sdk/platform-tools:$PATH
export PATH=$ANDROID_SDK_ROOT/emulator/:$PATH

# Powerline Shell
function _update_ps1() {
    PS1=$(powerline-shell $?)
}

if [[ $TERM != linux && ! $PROMPT_COMMAND =~ _update_ps1 ]]; then
    PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"
fi

export PATH="/usr/local/opt/mysql@5.7/bin:$PATH"
