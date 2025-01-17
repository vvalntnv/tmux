#!/bin/bash

PLUGIN_DIR="$HOME/.tmux/plugins/tpm"

if [ ! -d $PLUGIN_DIR ]; then
	git clone https://github.com/tmux-plugins/tpm $PLUGIN_DIR
fi

TMUX_DEST=$HOME/.tmux.conf

if ! test -f $TMUX_DEST; then
	ln -s $HOME/tmux-conf/.tmux.conf $HOME/.tmux.conf
fi


tmux source-file $HOME/.tmux.conf
