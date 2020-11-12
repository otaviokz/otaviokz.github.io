[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile

#Configure Proxies for Ford network (FMCC proxy:"proxyvipfmcc.nb.ford.com:83")
#export http_proxy="proxyvipfmcc.nb.ford.com:83"
#export https_proxy="proxyvipfmcc.nb.ford.com:83"

# export http_proxy="proxyvipfra.nb.ford.com:83" #Frankfurt Proxy
# export https_proxy="proxyvipfra.nb.ford.com:83"
# export http_proxy_port=83

#Aliases
alias python='python3'
alias pip='pip3'
alias workspace='cd ~/Documents/workspace'
# alias ssh='cd ~/.ssh'
alias sshAdd='ssh-add -t 28800 ~/.ssh/personal_github; ssh-add -t 28800 ~/.ssh/new; '
alias sslist='ssh-add -l'
alias reLists='cd ~/Documents/workspace/ReLists'
alias uiReLists='cd ~/Documents/workspace/UIKitReLists'
alias editBash='open /Users/otaviokz/.bash_profile -a Atom'
alias sl='cd ~/Documents/workspace/ShopList'
alias ddd="rm -rf ~/Library/Developer/Xcode/DerivedData" # Delete Derived Data
alias bitch='git'
alias tit='git'
alias goth='git'
alias gitClean='git clean -fd'
alias gsu='git submodule update --init --recursive'
alias grom='git reset --hard origin/master'
alias grhh='git reset --hard HEAD'
alias xcode_select='sudo xcode-select --switch /Applications/Xcode.app'
# alias remaster='git rebase master'
alias redevelop='git rebase develop'
alias develop='git co develop'
alias iap='git co test/iap-finland-2-the-return'
alias cmaster='git co master'
alias co-='git co -'
alias delrived='rm -rf /Users/otaviokz/Library/Developer/Xcode/DerivedData'
alias skeletor='open https://www.youtube.com/watch?v=4HAUzVJPM2g'
alias deployToVapor="vapor cloud deploy --env=prod --build=incremental -y"
#umask - ensure files created e.g. with installation scripts are accessible from admin group
umask 002 # i.e. u=rwx,g=rwx,o=rx for new files

#Brew Bash completion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

#Git bash completion
source /usr/local/git/contrib/completion/git-completion.bash

#Git info in prompt
source /usr/local/git/contrib/completion/git-prompt.sh #This script defines __git_ps1 used for git bash completion

git config --global alias.please 'push origin head -f'
git config --global alias.co 'checkout'
git config --global alias.st 'status'

#Git http proxy instead of ssh
#sudo git config --system url."https://github.com/".insteadOf git@github.com:
#sudo git config --system url."https://".insteadOf git://

#Terminal format and colour coding
export PS1='\[\033[36m\]\u:\[\033[33;1m\]\W\[\033[1;31m\]$(__git_ps1)\[\033[00m\]$ ' #Format prompt and assign colours
export CLICOLOR=1 #Turns colour coding on
#export LSCOLORS=ExFxBxDxCxegedabagacad #Customise colours

#Unicode
export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# Setting PATH for Python 3.7
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.7/bin:${PATH}"
export PATH

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# Setting PATH for Python 3.7
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.7/bin:${PATH}"
export PATH
