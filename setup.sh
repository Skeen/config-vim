#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Copy vim files
cp -r $DIR/.vim $HOME/
cp $DIR/.vimrc $HOME/

# Run PlugInstall
vim --not-a-term "+:PlugInstall|q|q" >/dev/null </dev/null
