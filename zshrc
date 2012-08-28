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
alias tv='vlc http://mafreebox.freebox.fr/freeboxtv/playlist.m3u'
alias monip='wget http://checkip.dyndns.org/ -O - -o /dev/null | cut -d: -f 2 | cut -d\< -f 1'
alias cam='mplayer tv:// -tv driver=v4l2:device=/dev/video0'
alias eff='ssh effraie.org'
alias free='free -m' # free en Mo
alias path='echo -e ${PATH//:/\\n}'     # affiche le path
alias tpon='synclient TouchpadOff=0'

#Divers
# Pacman alias examples
alias pac-upgrade='yaourt -Syua'            # Synchronize with repositories before upgrading packages that are out of date on the local system.
alias pac-install='sudo pacman -S'           # Install specific package(s) from the repositories
alias pac-local-install='sudo pacman -U'          # Install specific package not from the repositories but from a file 
alias pac-remove='sudo pacman -R'           # Remove the specified package(s), retaining its configuration(s) and required dependencies
alias pac-purge='sudo pacman -Rns'        # Remove the specified package(s), its configuration(s) and unneeded dependencies
alias pac-show-repos='pacman -Si'              # Display information about a given package in the repositories
alias pac-search-repos='pacman -Ss'             # Search for package(s) in the repositories
alias pac-show-local='pacman -Qi'              # Display information about a given package in the local database
alias pac-search-local='pacman -Qs'             # Search for package(s) in the local database

# Additional pacman alias examples
alias pac-abs-update-db='sudo pacman -Sy && sudo abs'     # Update and refresh the local package and ABS databases against repositories
alias pac-asdep='sudo pacman -S --asdeps'        # Install given package(s) as dependencies of another package
alias pac-refresh-force='sudo pacman -Syy'                # Force refresh of all package lists after updating /etc/pac.d/mirrorlist
alias pac-reflector="sudo reflector -l 5 --sort rate --save /etc/pacman.d/mirrorlist && sudo cat /etc/pacman.d/mirrorlist" # met à jour mirrorlist avec les meilleurs mirroirs, puis les affiche
alias pac-clean-cache="sudo cacheclean -pv 2"  # nettoie le cache en conservant 2 version des paquets
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
