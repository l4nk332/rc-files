uptime
echo " "

#Aliases are placed in this section
alias ll='ls -lahG'
alias vim='nvim'

#Environment variables are placed in this section
export PATH='/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin'

#History variables are set in this section
export HISTSIZE=1000		# 500 is default
export HISTFILESIZE=1000000
export HISTTIMEFORMAT='%b %d %I:%M %p '	# using strftime format
export HISTCONTROL=ignoreboth	# ignoredups:ignorespace
export HISTIGNORE="history:pwd:exit:df:ls -la:ll:clear"

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

source $(brew --prefix nvm)/nvm.sh
