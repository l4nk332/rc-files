uptime
echo " "

export TERM=xterm-256color
export CLICOLOR=1

export ZSH=$HOME/.oh-my-zsh

ZSH_THEME='hyperzsh'

plugins=(brew git npm node osx yarn zsh-autosuggestions zsh-syntax-highlighting web-search)

source $ZSH/oh-my-zsh.sh

# setopt no_beep
# setopt interactive_comments
# setopt auto_cd
# setopt append_history
# setopt share_history
# setopt hist_ignore_all_dups
# setopt hist_reduce_blanks
# setopt hist_ignore_space
# setopt inc_append_history
# unsetopt correct
# unsetopt correct_all
# setopt extended_glob
# setopt rm_star_wait

ZSH_AUTOSUGGESTION_HIGHLIGHT_STYLE='fg_white'
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=240'

alias vim='nvim'
alias ls='ls -lah'

alias home='cd ~/code/SimpleLegal'

alias dstop='docker-compose stop'
alias dsg='docker-compose up -d'
alias drestart='docker-compose restart'
alias dbuild='docker-compose build'

alias killmac='killall Dock Finder NotificationCenter Spotlight SystemUIServer'
alias battery='pmset -g batt'
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
export PATH="$HOME/.cargo/bin:$PATH"

#History variables are set in this section
export HISTSIZE=1000		# 500 is default
export HISTFILESIZE=1000000
export HISTTIMEFORMAT='%b %d %I:%M %p '	# using strftime format
export HISTCONTROL=ignoreboth	# ignoredups:ignorespace
export HISTIGNORE="history:pwd:exit:df:ls -la:ll:clear"
