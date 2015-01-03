#ce fichier surcharge /etc/zsh/zshrc
#source /etc/profile
#screen -x -R

autoload -U zfinit
zfinit
#export de variables
export EDITOR='vim'
export PAGER='most'

#alias
alias free='free -m' # free en Mo
alias path='echo -e ${PATH//:/\\n}'     # affiche le path
alias 'mkdir=mkdir -p'
alias logread="tail -f "$0" | ccze"
alias new-password="openssl rand -base64 6"

# Say how long a command took, if it took more than 30 seconds
export REPORTTIME=30

# Prompts for confirmation after 'rm *' etc
# Helps avoid mistakes like 'rm * o' when 'rm *.o' was intended
setopt RM_STAR_WAIT

unsetopt printexitvalue

# Crée un cache des complétion possibles
# très utile pour les complétion qui demandent beaucoup de temps 
zstyle ':completion:*' use-cache on                             
zstyle ':completion:*' cache-path ~/.zsh_cache

# manpages en couleur avec less
man() {
    env \
    LESS_TERMCAP_mb=$(printf "\e[1;31m") \
    LESS_TERMCAP_md=$(printf "\e[1;31m") \
    LESS_TERMCAP_me=$(printf "\e[0m") \
    LESS_TERMCAP_se=$(printf "\e[0m") \
    LESS_TERMCAP_so=$(printf "\e[1;44;33m") \
    LESS_TERMCAP_ue=$(printf "\e[0m") \
    LESS_TERMCAP_us=$(printf "\e[1;32m") \
    man "$@"
}
