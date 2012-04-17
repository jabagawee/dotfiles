#! /bin/sh

fail() {
    echo "$1" >&2 # write to stderr
    exit 1 # non-zero exit code
}

# Begin .vim configuration

[ -e "~/.vim" ] && fail "~/.vim already exists"
[ -e "~/.vimrc" ] && fail "~/.vimrc already exists"

cd vimrc

git submodule init
git submodule update

cd ..

ln -s ~/.vimrc vimrc
ln -s ~/.vim vim

echo "Done installing .vim configuration files"

# TODO: .git configuration
# TODO: .ssh configuration
