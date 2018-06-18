export TERM=xterm-256color
export CLICOLOR=1

export ZSH=$HOME/.oh-my-zsh

ZSH_THEME='hyperzsh'

plugins=(brew git npm node osx yarn zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

alias vim='nvim'
alias killmac='killall Dock Finder NotificationCenter Spotlight SystemUIServer'
alias battery='pmset -g batt'
alias ll='ls -lahG'
alias sl='cd ~/Code/Github/SimpleLegal/'
alias eb='cd ~/Code/Github/SimpleLegal/ebill/static/react/'
alias vp='cd ~/Code/Github/SimpleLegal/vendorportal/static/react/'
alias tmux='TERM=screen-256color-bce tmux'

#Environment variables are placed in this section
 export MYNAME='Ian Jabour'
 export PATH='/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin'
 export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/latest/bin
 export PATH="$HOME/.cargo/bin:$PATH"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export PATH="$PATH:`yarn global bin`"

#History variables are set in this section
export HISTSIZE=1000		# 500 is default
export HISTFILESIZE=1000000
export HISTTIMEFORMAT='%b %d %I:%M %p '	# using strftime format
export HISTCONTROL=ignoreboth	# ignoredups:ignorespace
export HISTIGNORE="history:pwd:exit:df:ls -la:ll:clear"

source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export FZF_DEFAULT_COMMAND='rg --files'

ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=23'
