#!/bin/sh

CURDIR=$PWD
TMPDIR=$(mktemp -d)

git clone https://github.com/banga/powerline-shell ${TMPDIR}/powerline-shell
cd ${TMPDIR/}powerline-shell
cp config.py.dist config.py
./install.py
ln -s $PWD/powerline-shell.py ~/powerline-shell.py

cd ..
git clone https://github.com/powerline/fonts.git
cd fonts
./install.sh
cd $CURDIR
rm -rf $TMPDIR
