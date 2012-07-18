#ce fichier surcharge /etc/zsh/zshrc
#source /etc/profile
autoload -U zfinit
zfinit

source $HOME/.zshrc.local

#export de variables
export EDITOR='vim'
export PAGER="most"

#alias
alias c-umount='fusermount -u /home/mathieu/encfs && rm -fr /home/mathieu/encfs'
alias c-mount='encfs /home/mathieu/.encfs /home/mathieu/encfs'
alias tv-totem='totem http://mafreebox.freebox.fr/freeboxtv/playlist.m3u'
alias up='sudo apt-get update && sudo apt-get upgrade && sudo apt-get dist-upgrade'
alias tv='vlc http://mafreebox.freebox.fr/freeboxtv/playlist.m3u'
alias freq='cpufreq-info | grep "fréquence actuelle"'
alias monip='wget http://checkip.dyndns.org/ -O - -o /dev/null | cut -d: -f 2 | cut -d\< -f 1'
alias cam='mplayer tv:// -tv driver=v4l2:device=/dev/video0'
alias eff='ssh effraie.org'
alias free='free -m' # free en Mo
alias path='echo -e ${PATH//:/\\n}'     # affiche le path
alias tpon='synclient TouchpadOff=0'

####################
# debian miam miam #
####################

apt_pref='apt-get'

alias ag='sudo apt-get'
alias at='sudo aptitude'
alias acs='apt-cache search'
alias afs='apt-file search --regexp'
alias afu='sudo apt-file update'
alias ap='apt-cache policy'

# Prints apt history
# Usage:
# apt-history install
# apt-history upgrade
# apt-history remove
# apt-history rollback
# apt-history list
# Based On: http://linuxcommando.blogspot.com/2008/08/how-to-show-apt-log-history.html
apt-history () {
    case "$1" in
        install)
            zgrep --no-filename 'install ' $(ls -rt /var/log/dpkg*)
            ;;
        upgrade|remove)
            zgrep --no-filename $1 $(ls -rt /var/log/dpkg*)
            ;;
        rollback)
            zgrep --no-filename upgrade $(ls -rt /var/log/dpkg*) | \
                grep "$2" -A10000000 | \
                grep "$3" -B10000000 | \
                awk '{print $4"="$5}'
            ;;
        list)
            zcat $(ls -rt /var/log/dpkg*)
            ;;
        *)
        echo "Parameters:"
        echo " install - Lists all packages that have been installed."
        echo " upgrade - Lists all packages that have been upgraded."
        echo " remove - Lists all packages that have been removed."
        echo " rollback - Lists rollback information."
        echo " list - Lists all contains of dpkg logs."
        ;;
    esac
}
#Divers

#types mime
autoload -U zsh-mime-setup
autoload -U zsh-mime-handler
zsh-mime-setup
alias -s pdf="evince"
alias -s avi="vlc"
# For convenience
alias 'mkdir=mkdir -p'

# Say how long a command took, if it took more than 30 seconds
export REPORTTIME=30

# Prompts for confirmation after 'rm *' etc
# Helps avoid mistakes like 'rm * o' when 'rm *.o' was intended
setopt RM_STAR_WAIT

#Push History from previous sessions
            fc -R $HISTFILE
pdf-reduce () {
       gs -dBATCH -dNOPAUSE -q -sDEVICE=pdfwrite -sOutputFile=$2 $1
}
# Crée un cache des complétion possibles
# très utile pour les complétion qui demandent beaucoup de temps 
zstyle ':completion:*' use-cache on                             
zstyle ':completion:*' cache-path ~/.zsh_cache
