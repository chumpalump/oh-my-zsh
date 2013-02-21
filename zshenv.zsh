#!/usr/bin/env zsh
umask 022

setopt EXTENDED_GLOB
setopt INC_APPEND_HISTORY

fpath=(~/lib/zsh_funcs $fpath)
autoload -- ~/lib/zsh_funcs/[^_]*[^~](:t)
zsh_hashes

# export DISPLAY=':0'

. ~/.sh_env

export PIP_DOWNLOAD_CACHE=~/.pip_download_cache
export WORKON_HOME=$HOME/.virtualenvs
source /usr/local/bin/virtualenvwrapper.sh

# zprojects
