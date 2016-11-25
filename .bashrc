uptime
echo " "


#Grep formatting in this section
export GREP_COLOR='00;38;5;226'
export GREP_OPTIONS="--color=auto"

#Command Prompt formatting is in this section
#export PS1='\h:\W \u$ '	
#Above is the Mac Default prompt
#export PS1="\[$(tput setaf 2)\]\u@\h|\[$(tput setaf 4)\]\w \[$(tput setaf 2)\]$ \[$(tput sgr0)\]"
#Check 'Git Preferences' section below for PS1


#Aliases are placed in this section
alias ll='ls -lah'
alias home='cd ~'

#Environment variables are placed in this section
export MYNAME='Ian Jabour'
export PATH='/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin'
export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/latest/bin

#History variables are set in this section
export HISTSIZE=1000		# 500 is default
export HISTFILESIZE=1000000
export HISTTIMEFORMAT='%b %d %I:%M %p '	# using strftime format
export HISTCONTROL=ignoreboth	# ignoredups:ignorespace
export HISTIGNORE="history:pwd:exit:df:ls -la:ll:clear"

#Git Preferences file link
if [ -f ~/.git-completion.bash ]; then
	source ~/.git-completion.bash
	source ~/.git-prompt.sh
fi

export PS1='\[$(tput setaf 2)\]\u|\[$(tput setaf 6)\]\W \[$(tput setaf 3)\]$(__git_ps1 "(%s)") \[$(tput setaf 2)\]$ \[$(tput sgr0)\]'

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
