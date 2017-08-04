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
alias ll='ls -lahG'
alias home='cd ~/Code/Github/SimpleLegal/'
# alias gtree='git log --all --graph --decorate --oneline --simplify-by-decoration'
alias lynx='/Applications/Lynxlet.app/Contents/Resources/lynx/bin/lynx'
alias asg='bash /Users/l4nk332/Code/scripts/shell/asg.sh'
alias dsg='docker-compose up -d'
alias dstop='docker-compose stop'
alias drun='docker-compose run --rm'
alias tmux='TERM=screen-256color-bce tmux'
alias vim='nvim'
function compileSass() {
    RED='\033[0;31m'
    LIGHT_PURPLE='\033[1;35m'
    NO_COLOR='\033[0m'

    inputFile="$1"
    outputFile="$2"

    if [ -z "$1" ] && [ -z "$2" ]
    then
        echo -e "${RED}Hmmm...you seem to be missing both an input and output path.${NO_COLOR}"
        return
    elif [ -z "$1" ]
    then
        echo -e "${RED}Hmmm...you seem to be missing an input path.${NO_COLOR}"
        return
    elif [ -z "$2" ]
    then
        echo -e "${RED}Hmmm...you seem to be missing an output path.${NO_COLOR}"
        return
    elif [ "$inputFile" == "$outputFile" ]
    then
        echo -e "${RED}Oops! Looks like the input and output files are the same...${NO_COLOR}"
        return
    else
        sass --sourcemap=none -C "$inputFile" .temp-sass.css && cat .temp-sass.css | postcss --no-map --use autoprefixer -b "last 10 versions" | postcss --no-map --use cssnano > "$outputFile" && rm .temp-sass.css
        echo -e "${LIGHT_PURPLE}Let's get Sassy ^_^${NO_COLOR}"
    fi
}

#Environment variables are placed in this section
export MYNAME='Ian Jabour'
export PATH='/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin'
export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/latest/bin
export PATH="$PATH:`yarn global bin`"

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

if [ -e /usr/share/terminfo/x/xterm-256color ]; then
    export TERM='xterm-256color'
else
    export TERM='xterm-color'
fi
