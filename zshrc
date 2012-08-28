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
alias up='yaourt -Syua'
alias tv='vlc http://mafreebox.freebox.fr/freeboxtv/playlist.m3u'
alias monip='wget http://checkip.dyndns.org/ -O - -o /dev/null | cut -d: -f 2 | cut -d\< -f 1'
alias cam='mplayer tv:// -tv driver=v4l2:device=/dev/video0'
alias eff='ssh effraie.org'
alias free='free -m' # free en Mo
alias path='echo -e ${PATH//:/\\n}'     # affiche le path
alias tpon='synclient TouchpadOff=0'

#Divers

#types mime
autoload -U zsh-mime-setup
autoload -U zsh-mime-handler
zsh-mime-setup
alias -s pdf="evince"
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
