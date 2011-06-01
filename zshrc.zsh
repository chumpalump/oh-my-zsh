# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
export ZSH_THEME="random"

# Set to this to use case-sensitive completion
# export CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# export DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# export DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# export DISABLE_AUTO_TITLE="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export WORDCHARS='*?_-[]~&!#$%^{}'
export LSCOLORS=cxfxcxdxbxegedabagacad 	 
#               | | | | | | |		 
#               | | | | | | +- char special
#               | | | | | +--- block special
#      	       	| | | |	+----- executable
#		| | | +------- pipe  
#		| | +--------- socket  	    
#		| +----------- symbolic link
#               +------------- directory

# turn OFF software flowcontrol
unsetopt FLOW_CONTROL
stty -ixon

. ~/.sh_aliases

alias ad2='hash -d|tr "=" " "|sort -k 2|column -t'
alias ad='hash -d|tr "=" " "|column -t'

alias -s pdf=evince
alias -s xls=gnumeric
alias -s tar.gz='tar tvfz'
alias -s tgz='tar tvfz'
alias -s zip='unzip -v'
alias -s sqlite=sqlite3
alias -s log=multitail

hash -d a=~/src/dataadmin
hash -d c=~/src/commandline
hash -d d=~/Desktop
hash -d dj=~/src/django
hash -d e=~/src/emacs/emacs-conf
hash -d h=~/src/hg
hash -d j=~/src/javascript
hash -d m=~/src/mq
hash -d o=~/src/orgfiles
hash -d p=~/src/python
hash -d pages=~/src/hg/pages-chumpalump/pages
hash -d pub=~/public_html
hash -d sh=~/src/commandline/shell-config
hash -d sp=/usr/local/lib/python2.6/site-packages
hash -d v=~/src/commandline/vim-conf
hash -d w=~/src/wiki

setopt INTERACTIVE_COMMENTS
setopt NO_BEEP
SAVEHIST=100000

bindkey -e  ## emacs key bindings
bindkey "OA"  history-beginning-search-backward  # cursor up
bindkey "OB"  history-beginning-search-forward   # cursor down
bindkey "[5~" history-beginning-search-backward   # page up
bindkey "[6~" history-beginning-search-forward    # page down

bindkey "[1~" menu-complete               # home
bindkey "[4~" accept-and-menu-complete    # end
