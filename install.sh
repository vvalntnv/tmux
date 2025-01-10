#!/bin/bash

PLUGIN_DIR="$HOME/.tmux/plugins/tpm"

if [ ! -d $PLUGIN_DIR ]; then
	git clone https://github.com/tmux-plugins/tpm $PLUGIN_DIR
fi

ln -s $HOME/tmux-conf/.tmux.conf $HOME/.tmux.conf

tmux source-file $HOME/.tmux.conf
