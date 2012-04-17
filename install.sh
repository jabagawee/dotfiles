#! /bin/sh

fail() {
    echo "$1" >&2 # write to stderr
    exit 1 # non-zero exit code
}

# Begin .vim configuration

[ -e "~/.vim" ] && fail "~/.vim already exists"
[ -e "~/.vimrc" ] && fail "~/.vimrc already exists"

git submodule init
git submodule update

ln -s `pwd`/vimrc ~/.vimrc
ln -s `pwd`/vim ~/.vim

echo "Done installing .vim configuration files"

# TODO: .git configuration
# TODO: .ssh configuration
