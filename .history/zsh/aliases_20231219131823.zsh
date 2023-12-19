# Shortcuts
alias copyssh="pbcopy < $HOME/.ssh/id_ed25519.pub"
alias reload="source $HOME/.zshrc"
alias reloaddns="dscacheutil -flushcache && sudo killall -HUP mDNSResponder"
alias ll="/opt/homebrew/opt/coreutils/libexec/gnubin/ls -AhlFo --color --group-directories-first"
alias update="sudo softwareupdate -i -a && brwew update && brew upgrade && brew cleanup && brew doctor"
alias bat="\bat --theme=GitHub"
alias ls="gls --color -h --group-directories-first -F"
alias localip="ipconfig getifaddr en0"

# Directories
alias library="cd $HOME/Library"
alias p="cd $HOME/Development/Projects"
alias c37="cd $HOME/Development/cloud37"
alias smh="cd $HOME/Development/Smarthome"
alias hl="cd $HOME/Development/Homelab"
alias c="cd $HOME/Development/Code"

# Files
alias zshconfig="code ~/.zshrc"
alias ohmyzsh="code ~/.oh-my-zsh"
alias dotfiles="code ~/.dotfiles"
alias hosts="code /etc/hosts"
alias sshconfig="code ~/.ssh/config"
alias gitconfig="code ~/.gitconfig"

# Git
alias gst="git status"
alias gb="git branch"
alias gc="git checkout"
alias gl="git log --oneline --decorate --color"
alias amend="git add . && git commit --amend --no-edit"
alias commit="git add . && git commit -m"
alias diff="git diff"
alias force="git push --force"
alias nuke="git clean -df && git reset --hard"
alias pop="git stash pop"
alias pull="git pull"
alias push="git push"
alias resolve="git add . && git commit --no-edit"
alias stash="git stash -u"
alias unstage="git restore --staged ."
alias wip="commit wip"
