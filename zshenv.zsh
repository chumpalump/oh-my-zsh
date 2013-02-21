#!/usr/bin/env zsh
umask 022

setopt EXTENDED_GLOB
setopt INC_APPEND_HISTORY

source /etc/grml/sh-lib

fpath=(~/lib/zsh_funcs $fpath)
autoload -- ~/lib/zsh_funcs/[^_]*[^~](:t)
#zsh_hashes

# export DISPLAY=':0'

. ~/.sh_env

export PIP_DOWNLOAD_CACHE=~/.pip_download_cache
export WORKON_HOME=$HOME/.virtualenvs
source /etc/bash_completion.d/virtualenvwrapper

# zprojects
