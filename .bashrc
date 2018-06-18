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

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export FZF_DEFAULT_COMMAND='rg --files --no-ignore --hidden --follow --glob "!{.git, node_modules}"'
