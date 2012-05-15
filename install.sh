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

# Begin .git configuration

[ -f "~/.gitconfig" ] && fail "~/.gitconfig already exists"
[ -f "~/.git_template" ] && fail "~/.git_template already exists"
[ -f "~/.git_diff_wrapper" ] && fail "~/.git_diff_wrapper already exists"

ln -s `pwd`/gitconfig ~/.gitconfig
ln -s `pwd`/git_template ~/.git_template
ln -s `pwd`/git_diff_wrapper ~/.git_diff_wrapper
chmod +x ~/.git_diff_wrapper

# TODO: .ssh configuration
