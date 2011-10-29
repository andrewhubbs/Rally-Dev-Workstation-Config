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
PS1='[\u: \w]$ '

# Run test and push origin master command
alias gpp='git pull --rebase && rm tmp/jasmine_fixtures/*.jasmine_fixture && rake && rake jasmine:ci && git push origin master'

# Use custom ree settings
source ~/workspace/rally/.ree_settings

