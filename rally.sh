# Friendlier ls
alias ll='ls -alFG'
alias llr='ls -alRFG'

# Prettier trees
alias tree='tree -ACF'
alias tr1='tree -ACFL 1'
alias tr2='tree -ACFL 2'
alias tr3='tree -ACFL 3'

alias ..='cd ..'

alias grep='grep --color'

# change the default prompt string
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}
export -f parse_git_branch

export CLICOLOR=1
export PS1="\[\033[36m\]\h:\W \[\033[33m\]\$(parse_git_branch)\[\033[00m\]$\[\033[00m\] "
export SUDO_PS1='\[\e[0;31m\]\u\[\e[m\] \[\e[1;34m\]\w\[\e[m\] \[\e[0;31m\]\$ \[\e[0m\]'


# Run test and push origin master command
alias gpp='git pull --rebase && rm tmp/jasmine_fixtures/*.jasmine_fixture && rake && rake jasmine:ci && git push origin master'

# Use custom ree settings
source ~/workspace/rally/.ree_settings

